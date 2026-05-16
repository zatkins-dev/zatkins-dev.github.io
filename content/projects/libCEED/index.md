---
title: libCEED
date: 2023-10-26
links:
  - type: code
    name: Code
    icon: brands/github
    url: https://github.com/CEED/libCEED
  - type: site
    name: Docs
    icon: custom/readthedocs
    url: https://libceed.org/en/latest/
tags:
  - libCEED
  - C

image:
  preview_only: true

status: contributor

featured: true

---
libCEED is a fast and portable matrix-free finite element code. It allows the same kernels to be run on CPU and GPU without rewriting source code.

![Diagram of libCEED At-Points operators](diagram.svg)

My contributions include assembly of at-points operators on GPU, a necessary feature for Ratel iMPM, and various performance and usability enhancements.

<!--more-->
