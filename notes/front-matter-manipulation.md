---
date: 2019-09-13T20:00:00+06:00
lastmod: 2019-09-15T20:00:00+06:00
title: "front-matter-manipulation"
authors: ["craftsmandigital"]
tags:
  - front-matter 
# slug: graphql
toc: true
comments: true
---

## There are 


this command coppy a md file without front-matter.

```bash
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ./content/file.md > ./content/nomater.md
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTIzNTg2MDkyNV19
-->