---
title: Resilient s-ACD for Asynchronous Collaborative Solutions of Systems of Linear
  Equations
authors:
- Lucas Erlandson
- Zachary Atkins
- Alyson Fox
- Christopher Vogl
- Agnieszka Miedlar
- Colin Ponce
date: '2023-09-26'
publishDate: '2025-09-01T01:03:33.214708Z'
publication_types:
- paper-conference
doi: 10.15439/2023F8932
abstract: Solving systems of linear equations is a critical component of nearly all
  scientiﬁc computing methods. Traditional algorithms that rely on synchronization
  become prohibitively expensive in computing paradigms where communication is costly,
  such as heterogeneous hardware, edge computing, and unreliable environments. In
  this paper, we introduce an s-step Approximate Conjugate Directions (s-ACD) method
  and develop resiliency measures that can address a variety of different data error
  scenarios. This method leverages a Conjugate Gradient (CG) approach locally while
  using Conjugate Directions (CD) globally to achieve asynchronicity. We demonstrate
  with numerical experiments that s-ACD admits scaling with respect to the condition
  number that is comparable with CG on the tested 2D Poisson problem. Furthermore,
  through the addition of resiliency measures, our method is able to cope with data
  errors, allowing it to be used effectively in unreliable environments.
links:
- name: URL
  url: https://annals-csis.org/Volume_35/drp/8932.html
---
