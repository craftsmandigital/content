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

## Fetching data from Github API with GraphQL

This is the link to the tool to test and build these queries.

* https://developer.github.com/v4/explorer/





### Query to view my gists

Query:

```json
{
  viewer {
    gists(first: 10) {
      nodes {
        id
        createdAt
        description
      }
    }
    login
  }
}
```

Result:

```json
{
  "data": {
    "viewer": {
      "gists": {
        "nodes": [
          {
            "id": "MDQ6R2lzdGU4NjNiNDI5MmMzOWNlYjY4NThjZTZmNjkzYzI3Mzli",
            "createdAt": "2018-11-15T08:22:48Z",
            "description": "My linux setup"
          },
          {
            "id": "MDQ6R2lzdDdjYmVhMTQwMDg0NDU0NGZmMDIyNDUyYThiNmY2NmIx",
            "createdAt": "2019-01-16T11:55:27Z",
            "description": "My personal vimium config"
          }
        ]
      },
      "login": "craftsmandigital"
    }
  }
}
```



### Query to fetch my repos 

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

