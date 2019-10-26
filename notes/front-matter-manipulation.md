---
date: 2019-09-13T20:00:00+06:00
lastmod: 2019-09-15T20:00:00+06:00
title: "Front matter manipulation in Hugo"
authors: ["muniftanjim"]
tags:
  - front-matter 
toc: true
comments: true
---



## There are two approaches to manipulate front matter variables in Hugo

### Programmatic add/update/remove variables in front matter
This must be done with a great portion of ingenuity, since it is no way in Hugo to physically manipulate content files before site generation.

#### benefits
When front matter is manipulated before generating of site, there is no modification in the Hugo project since this is already done before generation.

#### disadvantages
we always have to test if our pre-generated front matter content is out of date. and modify it or delete it.

#### How to do it

Generally this is a great job for custom output formats. 

1. Generate a `json` file over all the front matters that could be changed, with changed variables included.
1. Shell script that loop trough all Hugo content and replace front matter of md files that could be changed. Replaces with newly generated `json` front matter.
1. modify all front matter to be `yaml`
1. Generate site as normally.

Here is more technical information to the steps above.

1. This could be done with the normal `hugo` command. There could be a different configuration than normal because we need only a single `json` file with all front matters. This file could also contain information of witch files that could be changed. like this:
   ```json
   __DELIMIT__/content/debian-lxde-postinstall.md
   {
     "date": "2019-01-03 10:00:00 -0400",
     "lastmod": "2019-01-03 10:00:00 -0400",
     "title": "Debian 9 lxde Install and postinstall",
     "authors": [
       "craftsmandigital"
     ],
     "tags": [
       "Debian"
     ],
     "slug": "debian-lxde-postinstall",
   }
   __DELIMIT__/content/hugo-modules.md
   {
     "date": "2019-04-02 10:00:00 -0400",
     "lastmod": "2019-04-02 10:00:00 -0400",
     "title": "Hugo modules for dummies",
     "authors": [
       "craftsmandigital"
     ],
     "tags": [
       "Hugo"
     ],
     "slug": "hugo-modules",
     "toc": true
   }
   ```
   File could be separated by a delimiter and there is information about witch file with path that could be changed. Like the example above.
   

All the logic about modified front matter variables could be included in the custom output format generation. Also all the logic to maintain outdated variables.

there could be two config files extra to `config.toml` that tels what output it could be ex `config-normal-output.toml` and `config-front-matter-json.toml`. The first one could be as normal output and the last could lock like these after information get from this [link](https://forestry.io/blog/build-a-json-api-with-hugo/?q=&hPP=10&idx=blog&p=0).

```toml
   [outputs]
    page = []
       home = ["json"]
    section = []
```

   the [hugo command](https://gohugo.io/commands/hugo/) could look like these

   ```bash
hugo --config config.toml config-front-matter-json.toml
   ```

   Remember the generated file could be inside `/public` folder.

   

   2.  Script loops trough generated `json` file inside `/public` folder
   
      1. Delete `yaml` front mater for delimiter file.
      1. Insert new modified`json` front matter 
   
   2. Our modified front matters is of type `json` and the other unmodified is of type `yaml`. To fix this we just [run this command](https://gohugo.io/commands/hugo_convert_toyaml/)
   
      ```bash
      hugo convert toYAML
      ```
   
   4.  At last we generate the site. First we delete the files for our custom output format `json`.
   
      ```bash
      rm -R ./public
      hugo --config config.toml normal-output.toml
      ```
   
      

   

   

   

   

   

   

   

   


### Create dynamically front matter variables during run time.
Hugo cant see this variables when we generate a site. If we are going to add a new tag, for example, then we have to manipulate the code all places where tags is present in our code base

#### benefits
All the variables disappears after generating. There are no need to check if variables is outdated.

#### disadvantages
We have to add code to right places to get Hugo to output the right content, And I think this code have to be generated on many different places. The code would be different dependent of what you want to do

#### How to do it


this command coppy a md file without front-matter.

```bash
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ./content/input.md > ./content/putput.md
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTkzOTg1NjM3NV19
-->