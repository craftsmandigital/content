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

## There are two approaches to manipulate front matter variables in Hugo

### Programmatic add/update/remove variables in front matter
This must be done with a great portion of ingenuity, since it is no way in Hugo to physically manipulate content files before site generation.

#### benefits
When front matter is manipulated before generatig of site, there is no modification in the Hugo project since this is already done before generation.

#### disadvantages
we always have to test if our pre generated front matter content is out of date. and modify it or delete it.

### Create dynamically front matter variables during run time.
Hugo cant see this variables when we generate a site. If we are going to add a new tag, for example, then we have to manipulate the code all places where tags is present in our code base

#### benefits
All the variables dissapears after generating. There are no need to check if variables is outdated.

#### disadvantages
We have to add code to righth places to get Hugo to outputt the right content, And I think this code have to be generated on many different places. The code wil be different dependent of what you vil do




this command coppy a md file without front-matter.

```bash
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ./content/file.md > ./content/nomater.md
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTUyNjExMzIwNl19
-->