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

Query:

```json
query { 
  repositoryOwner(login: "craftsmandigital") { 
    login
    url
    repositories(first: 5){
      totalCount
      nodes{
        name
        url
        description
      }
    }
  }
}
```

Result:

```json
{
  "data": {
    "repositoryOwner": {
      "login": "craftsmandigital",
      "url": "https://github.com/craftsmandigital",
      "repositories": {
        "totalCount": 34,
        "nodes": [
          {
            "name": "configuration-files",
            "url": "https://github.com/craftsmandigital/configuration-files",
            "description": "my  config.  files"
          },
          {
            "name": "install-scripts",
            "url": "https://github.com/craftsmandigital/install-scripts",
            "description": "All my installation scripts in one place"
          },
          {
            "name": "test",
            "url": "https://github.com/craftsmandigital/test",
            "description": null
          },
          {
            "name": "emacs-configuration",
            "url": "https://github.com/craftsmandigital/emacs-configuration",
            "description": "My emacs (spacemacs) configuration in one place"
          },
          {
            "name": "windows-batc",
            "url": "https://github.com/craftsmandigital/windows-batc",
            "description": "All my windows batc files"
          }
        ]
      }
    }
  }
}
```

