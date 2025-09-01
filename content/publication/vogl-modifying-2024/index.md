---
title: Modifying the Asynchronous Jacobi Method for Data Corruption Resilience
authors:
- Christopher J. Vogl
- Zachary R. Atkins
- Alyson Fox
- Agnieszka Miȩdlar
- Colin Ponce
date: '2024-10-31'
publishDate: '2025-09-01T01:03:33.232204Z'
publication_types:
- article-journal
doi: 10.1137/23M1605648
abstract: Moving scientific computation from high-performance computing (HPC) and
  cloud computing (CC) environments to devices on the edge, i.e., physically near
  instruments of interest, has received tremendous interest in recent years. Such
  edge computing environments can operate on data in situ, offering enticing benefits
  over data aggregation to HPC and CC facilities that include avoiding costs of transmission,
  increased data privacy, and real-time data analysis. Because of the inherent unreliability
  of edge computing environments, new fault-tolerant approaches must be developed
  before the benefits of edge computing can be realized. Motivated by algorithm-based
  fault tolerance, a variant of the asynchronous Jacobi (ASJ) method is developed
  that achieves resilience to data corruption by rejecting solution approximations
  from neighbor devices according to a bound derived from convergence theory. Numerical
  results on a two-dimensional Poisson problem show that the new rejection criterion,
  along with a novel approximation to the shortest path length on which the criterion
  depends, restores convergence for the ASJ variant in the presence of certain types
  data corruption. Numerical results are obtained for when the singular values in
  the analytic bound are approximated. Additional linear systems are also explored,
  one with a more dense sparsity pattern and one that includes advection. All results
  indicate that successful resilience to data corruption depends on whether the bound
  tightens fast enough to reject corrupted data before the iteration evolution deviates
  significantly from that predicted by the convergence theory defining the bound.
  This observation generalizes to future work on algorithm-based fault tolerance for
  other asynchronous algorithms, including upcoming approaches that leverage Krylov
  subspaces.
links:
- name: URL
  url: https://epubs.siam.org/doi/10.1137/23M1605648
---
