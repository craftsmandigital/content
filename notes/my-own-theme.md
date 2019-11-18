---
title: My own Hugo theme
draft: true
---

## Thoughts about my own template

- Be careful about namespaces

- there could be call to empty partials inside partials as head. All this because ancestor easily can use them to extend functionality.
  - it should be appropriate input parameters
  - there should be returned values, if it's needed
  - here is an example how the namespace can be structured
    - partials/head.html
      - partials/pre/head.html
      - partials/post/head.html
- possibilities to add custom taxonomies like "8 years old" 100 days since
<!--stackedit_data:
eyJoaXN0b3J5IjpbODE4MDkwODI0LDMxMTYzNTcwNCwtMTA5ND
MyNjk4NywtMjEyNjE0OTQ0NiwtMjA2MTQzMTk0OF19
-->