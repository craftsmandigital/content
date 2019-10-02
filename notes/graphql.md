---
date: 2019-09-13T20:00:00+06:00
lastmod: 2019-09-15T20:00:00+06:00
title: "GraphQL"
authors: ["craftsmandigital"]
tags:
  - GraphQL
# slug: graphql
toc: true
comments: true
---

graphql stuff



| Query                                                        | Result                                                       |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| query { <br/>  repositoryOwner(login: "craftsmandigital") { <br/>    login<br/>    url<br/>    repositories(first: 20){<br/>      totalCount<br/>      nodes{<br/>        name<br/>        url<br/>        description<br/>      }<br/>    }<br/>  }<br/>} | {<br/>  "data": {<br/>    "repositoryOwner": {<br/>      "login": "craftsmandigital",<br/>      "url": "https://github.com/craftsmandigital",<br/>      "repositories": {<br/>        "totalCount": 34,<br/>        "nodes": [<br/>          {<br/>            "name": "configuration-files",<br/>            "url": "https://github.com/craftsmandigital/configuration-files",<br/>            "description": "my  config.  files"<br/>          },<br/>          {<br/>            "name": "install-scripts",<br/>            "url": "https://github.com/craftsmandigital/install-scripts",<br/>            "description": "All my installation scripts in one place"<br/>          },<br/>          {<br/>            "name": "test",<br/>            "url": "https://github.com/craftsmandigital/test",<br/>            "description": null<br/>          },<br/>          {<br/>            "name": "emacs-configuration",<br/>            "url": "https://github.com/craftsmandigital/emacs-configuration",<br/>            "description": "My emacs (spacemacs) configuration in one place"<br/>          },<br/>          {<br/>            "name": "windows-batc",<br/>            "url": "https://github.com/craftsmandigital/windows-batc",<br/>            "description": "All my windows batc files"<br/>          }<br/>        ]<br/>      }<br/>    }<br/>  }<br/>} |
|                                                              |                                                              |
|                                                              |                                                              |

