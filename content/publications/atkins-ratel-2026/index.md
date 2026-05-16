---
title: 'Ratel: Performance portable solid mechanics with libCEED and PETSc'
authors:
- admin
- Jed Brown
- Fabio Di Gioacchino
- Layla Ghaffari
- Zachariah T. Irwin
- Rezgar Shakeri
- Karen Stengel
- Jeremy L. Thompson
date: '2026-01-01'
publishDate: '2026-05-15T21:28:59.056897Z'
publication_types:
- article-journal
publication: '*Journal of Open Source Software*'
hugoblox.ids: { doi: 10.21105/joss.08388 }
links:
- name: URL
  url: https://doi.org/10.21105/joss.08388

abstract: |
  Ratel is a solid mechanics library and applications based on libCEED and PETSc
  with support for efficient high-order elements and CUDA and ROCm GPUs.

  Solid mechanics simulations provide vital information for many engineering applications, using
  a large amount of computational resources from workstation to supercomputing scales. The
  industry standard for implicit analysis uses assembled sparse matrices with low-order elements,
  typically $Q_1$ hexahedral and $P_2$ tetrahedral elements, with the linear systems solved using
  sparse direct solvers, algebraic multigrid, or multilevel domain decomposition. This approach
  has two fundamental inefficiencies: poor approximation accuracy per Degree of Freedom (DoF)
  and high computational and memory cost per DoF due to choice of data structures and
  algorithms. High-order finite elements implemented in a matrix-free fashion with appropriate
  preconditioning strategies can overcome these inefficiencies. Integrating more efficient data
  structures and algorithms into solid mechanics software libraries can greatly improve engineering
  workflows and allow users to better utilize their computational resources while new technologies
  like Automatic Differentiation can be used to shorten development time.
---
