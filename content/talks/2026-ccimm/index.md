---
title: Accelerating Implicit Contact via Matrix-Free Operators on Non-Conforming Interfaces
event_name: 41st Colorado Conference on Iterative and Multigrid Methods
event_url: https://coloradoconference.github.io/2026/
event_start: 2026-06-21
event_end: 2026-06-26
event_all_day: true
location: University of Colorado Boulder, Boulder, Colorado, U.S.
type: events

authors:
- admin
date: '2026-06-24'
publishDate: '2026-09-10'

links:
- name: slides
  url: slides.pdf

tags:
  - CCIMM

abstract: |
  In continuum solid mechanics, robust and accurate simulation of mesh-to-mesh contact remains a challenging problem to scale to modern GPU-based architectures. In this work, we present a novel matrix-free strategy for evaluating finite element integrals of nonlinear functions and their linearizations consistently across non-conforming and solution-dependent interfaces. To avoid assembling complex coupling matrices for segmented face intersections, we establish a single layout of dynamically determined quadrature points shared by both contacting meshes. By utilizing performance-portable libCEED operators to extract the necessary points for each surface cell, we can map quantities directly across the interface without copying the underlying vector of values. We demonstrate the efficiency of this zero-copy, matrix-free approach for mesh-to-mesh contact simulation in Ratel, our high-performance implicit solid mechanics library.
---

See slides linked above for more info!
