#!/usr/bin/env bash
set -euo pipefail

tmp_dir="$(mktemp -d)"
tmp_override="${tmp_dir}/posthog-test-override.yml"
tmp_site="${tmp_dir}/site"

cleanup() {
  rm -rf "${tmp_dir}"
}
trap cleanup EXIT

# Enable PostHog with a fake project key so the self-guarded loader renders into the built output.
cat >"${tmp_override}" <<'YAML'
enable_posthog: true
posthog_api_key: "phc_integration_test_key"
posthog_api_host: "https://us.i.posthog.com"
YAML

bundle exec jekyll build --config "_config.yml,${tmp_override}" -d "${tmp_site}" >/dev/null

home_page="${tmp_site}/index.html"

if [ ! -f "${home_page}" ]; then
  echo "expected site output at ${home_page}" >&2
  exit 1
fi

# Privacy guarantee: PostHog must initialize with session recording disabled and never re-enable it.
grep -q 'disable_session_recording: true' "${home_page}"
if grep -q 'disable_session_recording: false' "${home_page}"; then
  echo "PostHog loader must not enable session recording (found disable_session_recording: false)" >&2
  exit 1
fi

# Cookieless persistence keeps the integration consent-banner-free.
grep -q "persistence: \"memory\"" "${home_page}"

# Custom event capture keeps the agreed event names.
grep -q 'paper_pdf_click' "${home_page}"
grep -q 'cv_download' "${home_page}"
grep -q 'outbound_click' "${home_page}"

# href properties must be sanitized (query strings / hash fragments stripped) before capture.
grep -q 'function sanitizeHref' "${home_page}"
grep -q 'href: safeHref' "${home_page}"
if grep -qE 'capture\("(paper_pdf_click|cv_download|outbound_click)", \{ href: href' "${home_page}"; then
  echo "PostHog custom events must capture sanitized href (safeHref), not the raw href" >&2
  exit 1
fi

# Blank key must keep PostHog entirely out of the built output (default starter posture).
tmp_site_blank="${tmp_dir}/site-blank"
tmp_override_blank="${tmp_dir}/posthog-blank-override.yml"
cat >"${tmp_override_blank}" <<'YAML'
enable_posthog: true
posthog_api_key: ""
YAML
bundle exec jekyll build --config "_config.yml,${tmp_override_blank}" -d "${tmp_site_blank}" >/dev/null
# The loader lives in head.liquid, so it would appear on every page; checking the home page is sufficient.
if grep -q 'posthog.init' "${tmp_site_blank}/index.html"; then
  echo "PostHog must not load when posthog_api_key is blank" >&2
  exit 1
fi

echo "posthog integration checks passed"
