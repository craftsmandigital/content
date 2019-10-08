---
date: 2019-10-03T20:00:00+06:00
lastmod: 2019-10-03T20:00:00+06:00
title: "Hugo cheatsheet"
authors: ["craftsmandigital"]
tags:
  - Hugo
# slug: hugo-cheatsheet
toc: true
comments: true
---

Here are snippets of Hugo stuff I always forget.





| Description                                        | link                                                         |
| -------------------------------------------------- | ------------------------------------------------------------ |
| How to create a **shortcode** (shortcode parameter | https://gohugo.io/templates/shortcode-templates/#access-parameters |
| Calling a **partial**                              | **{{** partial "svgs/external-links.svg" . **}}**            |
| Calling a **partial** with multiple parameters     | **{{** partial "svgs/external-links.svg" **(** dict "fill" "#01589B" "width" 10 "height" 20 **)** **}}**  https://gohugo.io/functions/dict/#example-using-dict-to-pass-multiple-values-to-a-partial |
|                                 dette er en test                   |                                  dette også                            |



<!--stackedit_data:
eyJwcm9wZXJ0aWVzIjoidGl0bGU6IHRlc3QgdGl0bGVcbmF1dG
hvcjogdGVzdCBhdXRob3JcbnRhZ3M6ICd0ZXN0LGhlc3QscGVz
dCdcbnN0YXR1czogZHJhZnRcbmRhdGU6ICcyMDE5LTEwLTAzJ1
xuZXh0ZW5zaW9uczpcbiAgcHJlc2V0OiBnZm1cbiIsImhpc3Rv
cnkiOlszNTQyNDU2NTQsODAyNzYyMTUzLDQ3MjYxNjMxN119
-->