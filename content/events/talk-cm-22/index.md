---
title: The Algorithmic Development of a Fully Asynchronous Conjugate Gradient Method
authors:
- Zachary Atkins
- Alyson Fox
- Agnieszka Międlar
- Colin Ponce
- Christopher Vogl
date: '2022-04-01'
publishDate: '2025-09-01T01:13:18.558697Z'
publication_types:
- manuscript
abstract: Decentralized computing environments (DCE), or environments, such as edge
  computing, which utilize spatially distributed, non-hierarchical, and potentially
  heterogeneous computational units, present additional challenges such as communication
  delays and data locality which require asynchronous and resilient iterative methods
  to be practical. Such algorithms must be capable of progressing toward a solution
  even if one or more computational units is experiencing slowdowns, either due to
  poor communication connections or under-performing hardware. Previous work has shown
  that these challenges can be overcome for stationary iterative methods, such as
  asynchronous Jacobi (ASJ). In high-performance computing (HPC) settings, Krylov
  subspace iterative solvers, such as the conjugate gradient method (CG), are preferred
  for solving linear systems with symmetric positive-definite matrices due to their
  strong convergence guarantees. Despite requiring synchronous communication across
  all processors at every iteration, CG performs exceptionally well in shared memory
  and HPC environments. In DCE, the communication costs of synchronization may be
  considerably higher, as delays from even one computational unit prevent any other
  units from continuing. Further, the connection speeds between devices in edge computing
  will be considerable slower than the high-speed interconnects found in the HPC setting.
  We have developed an asynchronous CG (ACG) algorithm which removes these synchronization
  points by utilizing the partial direction vectors received at each iteration to
  form the next, mutually orthogonal search direction. Initial numerical results demonstrate
  the number of iterations required for convergence scales with the square root of
  the condition number of the matrix, as in the traditional CG algorithm. Further,
  we will present numerical results which compare ACG to CG and ASJ in both reliable
  computing environments and with injected delays and corruption to demonstrate the
  algorithmic performance of each for different computing environments.
links:
- name: URL
  url: https://easychair.org/smart-program/CM2022/2022-04-04.html#talk:187908
---
