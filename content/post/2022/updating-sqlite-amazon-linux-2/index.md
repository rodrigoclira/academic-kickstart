---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Atualizando o SQLITE no Amazon Linux 2"

subtitle: ""
summary: ""
authors: [admin]
tags: ["AWS", 'sqlite', 'Amazon Linux 2']
categories: []
date: 2022-03-18T23:18:25-03:00
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

O Django 3.x não suporta a versão do sqlite instalada no Amazon Linux 2. Para atualizar, baixe o pacote atualizado fedora e instale-o na sua EC2. Depois disso será possível usar projetos com sqlite.


```sh 
wget https://kojipkgs.fedoraproject.org//packages/sqlite/3.9.0/1.fc21/x86_64/sqlite-3.9.0-1.fc21.x86_64.rpm
sudo yum install sqlite-3.9.0-1.fc21.x86_64.rpm -y
```
