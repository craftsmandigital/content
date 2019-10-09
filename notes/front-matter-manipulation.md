---
date: 2019-09-13T20:00:00+06:00
lastmod: 2019-09-15T20:00:00+06:00
title: "Front matter manipulation in Hugo"
authors: ["craftsmandigital"]
tags:
  - front-matter 
toc: true
comments: true
---

There are two approaches to manipulate front matter variables in Hugo

 1. Programaticaly add/update/remove variables in front matter
	This must be done with a great portion of ingenuity, since it is no way in hugo to fysicaly manipulate content files before site generation.
 2. Create dynamicaly front matter variables during runtime.
	Hugo cant see this variables when we generate a site. We mu

this command coppy a md file without front-matter.

```bash
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ./content/file.md > ./content/nomater.md
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjAzNTM0NDI3N119
-->