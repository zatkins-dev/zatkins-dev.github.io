---
title: Arc Length Continuation in PETSc
date: 2024-05-07
links:
  - type: code
    icon: brands/github
    url: https://github.com/zatkins-dev/arc-length-verification
  - type: pdf
    url: atkins-snesnewtonal-report.pdf
tags:
  - PETSc
  - Solid Mechanics
  - C

image:
  caption: "Buckling Behavior of a Lee Frame with SNESNEWTONAL"

status: completed

featured: true
---

### Abstract:

> Traditional Newton methods with load and displacement control are unable to solve problems with limit points, bifurcations, and snap-through instabilities.
> Arc-length continuation methods are a powerful tool for solving these problems, but are not natively supported in PETSc (Portable, Extensible Toolkit for Scientific Computation).
> This work implements two arc-length continuation methods in PETSc: Crisfield's method with partial corrections and the normal-plane constraint method.
> Due to the composable nature of PETSc solvers, these methods can be used as a replacement for pseudo-time stepping approaches to static problems or as a composed solver for quasistatic and dynamic problems with time integration.
> To support the latter, this work implements a novel method for bounding the load parameter with a hybrid arc-length and Newton method in the final increment.
> The implementations are verified using a 3D large deformation buckling test, where they outperform the standard Newton method with pseudo-time stepping in terms of convergence and accuracy.

See the [write-up](atkins-snesnewtonal-report.pdf) and [code for the Lee frame example](https://github.com/zatkins-dev/arc-length-verification)!

<!--more-->
