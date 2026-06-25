---
layout: post
title: Why Spiking Neural Networks Are the Next Leap in AI
date: 2022-09-14 09:00:00-04:00
description: "Spiking neural networks on neuromorphic hardware sidestep the von Neumann bottleneck that makes GPUs and TPUs power-hungry — pointing to energy-efficient edge and embodied AI. Why neuromorphic computing is AI's next leap."
tags: [neuromorphic-computing, spiking-neural-networks, energy-efficient-ai, edge-ai, embodied-ai, neuroai]
categories: [research-notes]
author: Jacob Lavoie
canonical_url: https://medium.com/@jacoblav2/why-spiking-neural-network-are-the-next-leap-in-ai-8c332d0c4083
giscus_comments: false
related_posts: false
---

_Originally published on [Medium](https://medium.com/@jacoblav2/why-spiking-neural-network-are-the-next-leap-in-ai-8c332d0c4083) on September 14, 2022. ~3 min read._

Data and infrastructure supporting AI development have come a long way in the last decade. The Tensor Processing Unit (TPU) has been developed, and databases have been standardized and made public. But to deploy AI into the real world, a fundamental problem emerges… Power. I am not talking about political power (although ethical concerns are real), but about power consumption. GPUs and TPUs are notoriously known to consume… a lot. Even Google-embedded TPU SoMs are quite greedy to deploy. If we want AI to explore the world as we do, it needs to get out there without being tied to farm-size servers. Operating and maintaining these infrastructures also has a cost. This prohibitive cost results in a monopoly of large entities on certain AI models.

## The von Neumann bottleneck

Why do they consume that much? Their power consumption comes from a fundamental flaw that every computer has… the von Neumann bottleneck. Every computer today, from the microcontroller to the Intel CPU, is designed based on the same principles, which are described by the von Neumann architecture. This type of architecture has one flaw. Memory is always separate from the processing unit. The fast memory (Cache > RAM > HDD) is closer to the processor to limit latency. Yes, your processor is crunching numbers, but most of the time it is trying to remember where it put its files. If it is not in the cache, well, that is too bad; it sends the request to find the data and moves on to the next thing in line. Many precious cycles of your CPU are wasted loading data from slow memory. That is what we call the von Neumann bottleneck, and von Neumann himself knew it.

Brains are not like that.

## Enter the neuromorphic processor

One architecture that is especially suited for AI — and a dream come true for neuroscientists and computer engineers — is the Neuromorphic Processor (NMP). You probably already guessed that NMPs are inspired by the brain. While CPUs and TPUs have separate memory, neurons do not. The brain's "memory" is in each synapse. It is therefore distributed and close to the processing units, the neurons. That is why [IBM](https://research.ibm.com/blog/truenorth-deep-learning-inference), [Intel](https://www.intel.com/content/www/us/en/research/neuromorphic-computing.html), [Qualcomm](https://www.qualcomm.com/news/onq/2013/10/introducing-qualcomm-zeroth-processors-brain-inspired-computing), and a bunch of other big and small entities — like the American [DoD](https://en.wikipedia.org/wiki/Joint_Artificial_Intelligence_Center) — are quietly developing the technology while no one pays attention. Quantum computing will redefine computing, sure… but NMPs are at our doors. An Artificial Neural Network (ANN) can easily be transformed into a Spiking Neural Network (SNN), which is supported by an NMP.

## The energy numbers

The work of [Blouw et al.](https://arxiv.org/abs/1812.01739) illustrates the energy needed to process one sample, comparing a GPU, a CPU, and Intel's NMP named Loihi. (See the figures in the [original paper](https://arxiv.org/abs/1812.01739).)

Isn't the whole point of a GPU to process many samples at the same time, in parallel? Indeed — so let us see the results for batch inference. It takes 64 samples on a GPU to come close to an Intel NMP like Loihi. So, for example, if you try to process a standard real-time video that arrives at 24 frames per second, you must wait more than 2.66 seconds to accumulate enough data to bring your power consumption down. So much for real-time…

---

_This article is inspired by [Benchmarking Keyword Spotting Efficiency on Neuromorphic Hardware](https://arxiv.org/abs/1812.01739) (Blouw, Choo, Hunsberger & Eliasmith, 2018), published on arXiv._
