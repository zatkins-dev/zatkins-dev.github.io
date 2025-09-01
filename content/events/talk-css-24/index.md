---
title: Addressing Numerical Challenges in Frictional Contact Simulation for Finite-Deformation
  Solid Mechanics
authors:
- Zachary Atkins
date: '2024-10-01'
publishDate: '2025-09-01T01:13:18.567037Z'
publication_types:
- manuscript
abstract: The numerical simulation of contact phenomena in implicit, finite-deformation
  solid mechanics codes presents significant challenges due to the introduction of
  nonlinear and non-smooth operators. These complexities necessitate specialized linear
  and nonlinear solvers to be performant at scale. In this context, our finite element
  package, Ratel, distinguishes itself by employing high-order matrix-free methods,
  contrasting with the prevailing industry standard of low-order solvers applied to
  sparse assembled Jacobian matrices. Ratel capitalizes on the robust solver infrastructure
  provided by the Portable Extensible Toolkit for Scientific Computing (PETSc) and
  integrates the flexible matrix-free library libCEED, enabling highly scalable performance
  across both CPU and GPU architectures. Ratel supports level-set based frictional
  contact, which can be enforced by either Nitsche’s method or a penalty method. This
  talk will elucidate approaches to several numerical challenges associated with these
  contact formulations, particularly for high-order and matrix-free methods. These
  challenges include the computation of material stresses on contact surfaces, the
  solution of the asymmetric, indefinite, and/or poorly conditioned Jacobian matrices,
  and the numerical instability and slow nonlinear solver convergence behavior due
  to non-smooth friction models
links:
- name: URL
  url: https://sse.umkc.edu/siam-2024/
---
