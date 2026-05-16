---
# Leave the homepage title empty to use the site title
title: ""
date: 2022-10-24
type: landing
sections:
  - block: resume-biography-old
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: https://github.com/zatkins-dev/cv/blob/main/latest.pdf
      headings:
        about: 'About Me'
        education: ''
        interests: ''
    design:
      css_class: dark pt-0 pb-8
      name:
        size: md
      # Avatar customization
      avatar:
        size: large  # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        color: black
        image:
          # Add your image background to `assets/media/`.
          filename: stacked-peaks.svg
          filters:
            brightness: 1.0
          size: cover
          position: center
          parallax: false
  - block: markdown
    content:
      title: '📚 My Research'
      subtitle: ''
      text: |-
        I'm a graduate research assistant focusing on performance, scalability, efficiency, and accuracy for simulations of complex physical systems.
        I contribute to open-source and publicly funded software packages for numerical linear algebra, partial differential equations, and computational mechanics.

        My particular interests include finite-element-based implicit contact mechanics and implicit material point methods.

        Please reach out to collaborate 😃
    design:
      columns: '1'
      css_class: pt-8 pb-8 text-primary
  - block: collection
    id: projects
    content:
      title: Featured Projects
      filters:
        folders:
          - projects
        featured_only: true
    design:
      view: article-grid
      columns: 3
      css_class: pt-8 pb-8
  - block: collection
    id: papers
    content:
      title: Recent Publications
      filters:
        folders:
          - publications
        featured_only: false
    design:
      view: citation
      css_class: pt-8 pb-8

  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      filters:
        folders:
          - talks
    design:
      view: article-grid
      columns: 3
      css_class: pt-8 pb-0

---
