---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Git Cheat Sheet"
subtitle: ""
summary: ""
authors: [admin]
tags: ["git", 'github']
categories: ['blog']
date: 2021-07-15T23:57:14-03:00
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

Git é o sistema de controle de versão distribuído gratuito e de código aberto responsável por tudo o que o [GitHub](https://github.com) relacionado que acontece localmente no seu computador. Esta folha de dicas apresenta os mais importantes e comumente usados comandos para fácil referência.

## Instalação e GUI
Com instaladores específicos de plataforma para Git, o GitHub também fornece o facilidade de se manter atualizado com os últimos lançamentos do comando ferramenta de linha ao fornecer uma interface gráfica do usuário para o dia-a-dia interação, revisão e sincronização de repositório

### Git para Windows
[htps://windows.github.com](htps://windows.github.com)

### Git para MAC
[htps://mac.github.com](htps://mac.github.com)

Para plataformas Linux e Solaris, a versão mais recente está disponível em o site oficial do Git. 

### Git para todas plataformas
[http://git-scm.com](http://git-scm.com)


---------------------------------------


## Configuração 
**Configurando as informações do usuário usadas em todos os repositórios locais.**

```console
git config --global user.name “[firstname lastname]”
```
Define um nome que seja identificável para crédito ao revisar o histórico de versão


```console
git config --global user.email “[valid-email]”
```
Define um endereço de e-mail que será associado a cada marcador de histórico


```console
git config --global color.ui auto
```

Define a coloração automática da linha de comando para Git para facilitar a revisão 

---------------------------------------


## Iniciando
**Configurando informações do usuário, inicializando e clonando repositórios.**


```console
git init
```
Inicializa um diretório existente como um repositório Git


```console
git clone [url]
```
Recupera um repositório inteiro de um local hospedado via URL

---------------------------------------


## STAGE e SNAPSHOT

**Trabalhando com snapshots e a stage.**



```console
git status
```
Mostra arquivos modificados no diretório de trabalho, preparados para seu próximo commit


```console
git add [file]
```
Adiciona um arquivo no seu estado atual em seu próximo commit (stage)


```console
git reset [file]
```
Remove do commit um arquivo enquanto mantém as mudanças no diretório de trabalho


```console
git diff
```
diferença do que foi alterado, mas colocado no stage


```console
git diff --staged
```
Exibe a diferença do que foi colocado em stage, mas ainda não foi comitado


```console
git commit -m “[descriptive message]
```
Envia seu conteúdo no stage como um novo snapshot de commit

---------------------------------------


## BRANCH e MERGE

**Isolando o trabalho nas branches, mudando o contexto e integrando as mudanças.**


```console
git branch
```
Lista todas suas branches. Um a* aparecerá próximo ao branch atualmente ativo


```console
git branch  [branch-name]
```
Cria um novo branch no commit atual


```console
git checkout
```
Muda para outro branch 


```console
git merge [branch]
```
Mescla o branch especificado no atual



[Git Cheat Original](https://education.github.com/git-cheat-sheet-education.pdf)

