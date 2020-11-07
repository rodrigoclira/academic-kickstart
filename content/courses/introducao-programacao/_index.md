---
# Course title, summary, and position.
linktitle: Introdução a Programação
summary: Disciplina de Introdução a Programação do curso de Análise e Desenvolvimento de Sistemas do IFPE Campus Paulista.
weight: 1

# Page metadata.
title: Introdução a Programação
date: "2018-09-09T00:00:00Z"
lastmod: "2018-09-09T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  introducao-programacao:
    name: Apresentação da Disciplina
    weight: 1
---

## Apresentação da Disciplina

Olá, seja bem-vindo(a) a disciplina de introdução a programação do curso de análise e desenvolvimento de sistemas do IFPE Campus Paulista. Devido a pandemia do coronavíus, o *campus*, assim como todo o IFPE, assumiu uma abordagem de ensino remoto. Nossa aula será realizada toda de forma remota enquanto não for restabelecido o ensino presencial. 

A disciplina acontecerá da seguite forma: 

* Liberação de materiais digitais (apostila, vídeos...)
* Contato com o professor para tirar dúvidas sobre o assunto através de e-mail, telegram... 
* Reuniões semanais usando web conferência (Google Meet) para tirar dúvidas sobre o assunto em um horário pré-definido


This feature can be used for publishing content such as:

* **Online courses**
* **Project or software documentation**
* **Tutorials**

The `courses` folder may be renamed. For example, we can rename it to `docs` for software/project documentation or `tutorials` for creating an online course.

## Delete tutorials

**To remove these pages, delete the `courses` folder and see below to delete the associated menu link.**

## Update site menu

After renaming or deleting the `courses` folder, you may wish to update any `[[main]]` menu links to it by editing your menu configuration at `config/_default/menus.toml`.

For example, if you delete this folder, you can remove the following from your menu configuration:

```toml
[[main]]
  name = "Courses"
  url = "courses/"
  weight = 50
```

Or, if you are creating a software documentation site, you can rename the `courses` folder to `docs` and update the associated *Courses* menu configuration to:

```toml
[[main]]
  name = "Docs"
  url = "docs/"
  weight = 50
```

## Update the docs menu

If you use the *docs* layout, note that the name of the menu in the front matter should be in the form `[menu.X]` where `X` is the folder name. Hence, if you rename the `courses/example/` folder, you should also rename the menu definitions in the front matter of files within `courses/example/` from `[menu.example]` to `[menu.<NewFolderName>]`.
