---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Como manter o processo mesmo após sair da sessão"
subtitle: ""
summary: ""
authors: [admin]
tags: ["aws", 'cloud','linux', 'screen']
categories: ['blog']
date: 2021-05-05T23:57:14-03:00
lastmod: 
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

Para manter a execução de um comando mesmo após sair da sessão pode-se utilizar o comando screen. Os passos são os seguintes: 

1. Acesse via ssh o computador. Escreva o comando `screen` e então execute o programa/script que dejas manter em segundo plano.

2. Pressione Ctrl+A e então Ctrl+D. Isso fará com que você saia daquela sessão do screen, mas o manterá conectado no computador. 

3. Caso desejes voltar para visualizar a execução do programa/script, use o comando `screen -r`. Isso irá levá-lo de volta a sessão iniciada pelo screen. 
