---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Mindspore no Colab 2023"

subtitle: ""
summary: ""
authors: [admin]
tags: [IA, minspore]
categories: []
date: 2023-07-03T10:18:25-03:00
lastmod:
featured: true
draft: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: "2"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []

---


Desde que o Google atualizou a versão do Python no Colab para a versão 3.10, o mindspore não pode ser mais utilizado nesse ambiente. 
Até então não existe o suporte para a versão 3.10 e a instalação através do pip parou de funcionar. 
Para quebrar o meu projeto, eu resolvi fazer o *downgrade* da versão do Python. 

Segue o passo a passo. 
Execute o comando abaixo para descorbir os caminhos dos interpretadores já instalados. 

```
!update-alternatives --config python3
```

![png](alternatives-config.png)

Talvez você tenha que cancelar a execução da célula para seguir para o próximo comando. 
Nesse caso vamos escolher o versão 3.8 para ser a padrão

```
!update-alternatives --set python3 /usr/bin/python3.8
```

![png](alternatives-set.png)


Agora já pode checar a versão do Python
```
python --version
```

e voilà

```
!pip3 install mindspore
```


Caso você não encontre a instalação do pip, você pode instalá-lo com o comando abaixo: 

```
!curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
!python get-pip.py
```