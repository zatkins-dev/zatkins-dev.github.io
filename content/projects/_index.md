---
title: 'Projects'
type: landing

design:
  # Section spacing
  spacing: '5rem'

# Page sections
sections:
  - block: portfolio
    content:
      title: Projects
      text: Here are some of the interesting things I have worked on!
      filters:
        folders:
          - projects
        count: 6
      buttons:
        - name: All
          tag: '*'
        - name: C Programing
          tag: C
        - name: Solid Mechanics
          tag: Solid Mechanics
        - name: Miscellaneous
          tag: Miscellaneous
        - name: Tools
          tag: Tools
      default_button_index: 0
      archive:
    design:
      # view: article-grid
      fill_image: false
      columns: 3
      status_classes:
        - name: contributor
          class: bg-purple-900 dark:bg-purple-200
        - name: completed
          class: bg-lime-900 dark:bg-lime-200
        - name: ongoing
          class: bg-teal-900 dark:bg-teal-200
---
