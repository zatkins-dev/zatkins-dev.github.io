---
# Display name
title: Zachary R. Atkins

# Name pronunciation (optional)
name_pronunciation: ZAK-uh-ree AT-kinz

# Full name (for SEO)
first_name: Zachary Ryan
last_name: Atkins

# Pronouns (optional)
pronouns: he/they

# Status emoji
status:
  icon: ☕️

# Is this the primary user of the site?
superuser: true

# Highlight the author in author lists? (true/false)
highlight_name: true

# Role/position/tagline
role: Graduate Research Assistant

# Organizations/Affiliations to display in Biography blox
organizations:
  - name: PhyPID Group, University of Colorado Boulder
    url: https://phypid.org/

# Social network links
# Need to use another icon? Simply download the SVG icon to your `assets/media/icons/` folder.
profiles:
  - icon: brands/github
    url: https://github.com/zatkins-dev
  - icon: brands/linkedin
    url: https://www.linkedin.com/in/zratkins/
  - icon: academicons/google-scholar
    url: https://scholar.google.com/citations?user=r0o8uGIAAAAJ&hl=en
  - icon: academicons/orcid
    url: https://orcid.org/0000-0002-2491-0725

interests:
  - Computational Solid Mechanics
  - Contact Mechanics
  - Finite Element Methods
  - Material Point Methods
  - Matrix-Free Methods

education:
  - area: PhD Computer Science
    institution: University of Colorado Boulder
    date_start: 2022-08-01
    date_end: ''
    summary: |
      GPA: 4.0/4.0

      Advisor: Jed Brown, [PhyPID Group](https://phypid.org/)

      Coursework centering on numerical methods and high-performance scientific computing.

      Research projects:
      - Implemented Nitsche's method for modeling contact between elastic and rigid solid bodies in PSAAP-sponsored [Ratel](https://ratel.micromorph.org/) code
      - Developed entropy variable implementation of Navier-Stokes fluid dynamics in PSAAP-sponsored libCEED code (now [HONEE](https://honee.phypid.org/))
      - Contributed arc-length continuation solver to [PETSc](https://petsc.org/), a high-performance, scalable library for numerical PDEs
      - Developed implicit, updated Lagrangian material point method solver for hyperelastic materials in [Ratel](https://ratel.micromorph.org/)
      - Created [ChordDyn](/project/ChordDyn/index.html), a Tonnetz-based chord progression generator using chaotic dynamics in Julia

  - area: BSc Mathematics, Highest Distinction & Honors
    institution: University of Kansas
    date_start: 2016-08-01
    date_end: 2021-05-01
    summary: |
      GPA: 4.0/4.0

      Major projects:
      - Awarded departmental honors for a project on the application of decentralized optimization methods to edge devices
      - Received university undergraduate research award for domain decomposition methods for eigenvalue problems

      Courses included:
      - Advanced Numerical Differential Equations (MATH 882)
      - Numerical Analysis I & II (MATH 781 & 782)
      - Applied Numerical Linear Algebra (MATH 591)
      - Mathematical Analysis I (Math 765)
      - Complex Analysis I (MATH 800)

  - area: BSc Computer Science, Highest Distinction
    institution: University of Kansas
    date_start: 2016-08-01
    date_end: 2021-05-01
    summary: |
      GPA: 4.0/4.0

      Comprehensive background in data structures, algorithms, and computing theory.
      Electives in artificial intelligence and computer graphics, as well as cross-major electives in numerical analysis.

      Major projects:
      - C and C++ projects including [functioning compiler](https://github.com/thecsw/eecs665-projects) and [basic Linux shell](https://github.com/zatkins-dev/quash)
      - Reinforcement learning with OpenAI using Python
      - Video game and graphics development using Unity, PyGame ([Flat-Earth Space Program](https://github.com/zatkins-dev/BitsPlease-FESP)), and OpenGL ([various projects](https://github.com/zatkins-dev/eecs672.shanghai-tower))
work:
  - position: Graduate Research Assistant
    company_name: University of Colorado Boulder
    company_url: ''
    company_logo: ''
    date_start: '2023-01-01'
    date_end: ''
    summary: |2-
      Contributed to highly-performant, high-order and matrix-free solid mechanics code Ratel under the auspices of the Predictive Science Academic Alliance Program (PSAAP).

      - Developed GPU-enabled material point method for consolidation simulations of polymer-bonded crystalline materials
      - Tuned solvers for AMD and NVIDIA GPU-based supercomputer environments
      - Implemented elastic-rigid contact via Nitsche's method and penalty method
  - position: Summer Computing Intern
    company_name: Lawrence Livermore National Laboratory
    company_url: ''
    company_logo: ''
    date_start: 2024-06-01
    date_end: 2024-08-08
    summary: |
      Contributed to Lab-funded open-source projects for the simulation of solid mechanics and contact, with an emphasis on performance.

      - Integrated PETSc linear and nonlinear solvers into the [Serac](https://serac.readthedocs.io/en/latest/) solid mechanics code
      - Dramatically improved solver performance, with runtime improvements exceeding 40%
  - position: Graduate Teaching Assistant
    company_name: University of Colorado Boulder
    company_url: ''
    company_logo: ''
    date_start: 2016-01-01
    date_end: 2020-12-31
    summary: |
      Designed assignments aligning with curriculum and taught introductory programming in C++.

      - Led two recitation sections weekly consisting of over 70 students
      - Facilitated over 30 cumulative hours of interview grading
      - Created design documentation and rubrics for final class project, a text-based video game
  - position: Academic Graduate Appointee
    company_name: Lawrence Livermore National Laboratory
    company_url: ''
    company_logo: ''
    date_start: 2021-06-15
    date_end: 2022-08-08
    summary: |
      Researched optimal optimal methods of domain decomposition for eigenvalue problems, particularly spectral Schur complement techniques.
      Continued research on decentralized optimization in collaboration with LLNL.

      - Led development of a moderately-sized software library to facilitate communication between grid devices
      - Collaborated with internal and external project contributors and stakeholders
      - Augmented existing numerical methods with robustness to communication delays and bad data
      - Invented novel asynchronous, distributed linear solver based on Krylov subspace methods
  - position: Undergraduate Research Assistant
    company_name: University of Kansas
    company_url: ''
    company_logo: ''
    date_start: 2021-06-15
    date_end: 2022-08-08
    summary: |
      Applied mathematical and computing principles to power system resilience through collaborative autonomy.

      - Received Mathematics departmental undergraduate research award
      - Presented early results on domain decomposition for eigenvalue problems at 2020 Undergraduate Research Day at the Capitol
      - Presented at 2021 SIAM Conference on Computational Science and Engineering over: _Using Decentralized Learning to Reduce Communication in Column-Partitioned, Multi-Agent Systems_


# Skills
# Add your own SVG icons to `assets/media/icons/`
# skills:
#   - name: Technical Skills
#     items:
#       - name: Python
#         description: ''
#         percent: 80
#         icon: code-bracket
#       - name: Data Science
#         description: ''
#         percent: 100
#         icon: chart-bar
#       - name: SQL
#         description: ''
#         percent: 40
#         icon: circle-stack
#   - name: Hobbies
#     color: '#eeac02'
#     color_border: '#f0bf23'
#     items:
#       - name: Hiking
#         description: ''
#         percent: 60
#         icon: person-simple-walk
#       - name: Cats
#         description: ''
#         percent: 100
#         icon: cat
#       - name: Photography
#         description: ''
#         percent: 80
#         icon: camera

# languages:
#   - name: English
#     percent: 100

# Awards.
#   Add/remove as many awards below as you like.
#   Only `title`, `awarder`, and `date` are required.
#   Begin multi-line `summary` with YAML's `|` or `|2-` multi-line prefix and indent 2 spaces below.
# awards:
#   - title: Neural Networks and Deep Learning
#     url: https://www.coursera.org/learn/neural-networks-deep-learning
#     date: '2023-11-25'
#     awarder: Coursera
#     icon: coursera
#     summary: |
#       I studied the foundational concept of neural networks and deep learning. By the end, I was familiar with the significant technological trends driving the rise of deep learning; build, train, and apply fully connected deep neural networks; implement efficient (vectorized) neural networks; identify key parameters in a neural network’s architecture; and apply deep learning to your own applications.
#   - title: Blockchain Fundamentals
#     url: https://www.edx.org/professional-certificate/uc-berkeleyx-blockchain-fundamentals
#     date: '2023-07-01'
#     awarder: edX
#     icon: edx
#     summary: |
#       Learned:
#       - Synthesize your own blockchain solutions
#       - Gain an in-depth understanding of the specific mechanics of Bitcoin
#       - Understand Bitcoin’s real-life applications and learn how to attack and destroy Bitcoin, Ethereum, smart contracts and Dapps, and alternatives to Bitcoin’s Proof-of-Work consensus algorithm
#   - title: 'Object-Oriented Programming in R'
#     url: https://www.datacamp.com/courses/object-oriented-programming-with-s3-and-r6-in-r
#     certificate_url: https://www.datacamp.com
#     date: '2023-01-21'
#     awarder: datacamp
#     icon: datacamp
#     summary: |
#       Object-oriented programming (OOP) lets you specify relationships between functions and the objects that they can act on, helping you manage complexity in your code. This is an intermediate level course, providing an introduction to OOP, using the S3 and R6 systems. S3 is a great day-to-day R programming tool that simplifies some of the functions that you write. R6 is especially useful for industry-specific analyses, working with web APIs, and building GUIs.
---

## About Me

Zachary R. Atkins, who goes by Zach, is a computer science PhD student at the University of Colorado Boulder specializing in high-performance computing, computational solid mechanics, and matrix-free linear algebra for finite element methods.
