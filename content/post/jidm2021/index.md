---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Publicação no Journal of Information and Data Management (JIDM 2021)"
subtitle: ""
summary: ""
authors: [admin]
tags: ["credit scoring"]
categories: ['blog']
date: 2021-05-26T23:57:14-03:00
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

O artigo "Analysis of Distinct Feature Groups in the Credit Scoring
Problem" foi aceito no [Journal of Information and Data Management](https://sol.sbc.org.br/journals/index.php/jidm). O artigo é uma extensão do publicado no [Symposium on Knowledge Discovery, Mining and Learning (KDMiLe)](http://www2.sbc.org.br/bracis2020/kdmile.html) no ano passado. Mais informações sobre o artigo: 

Autores: L. F. Vercosa, **R. Lira**, R. Monteiro, K. Silva, J. Magalhaes, A. Maciel, B. Leite, C. Bastos-Filho

Abstract: 
"Registration and financial data have been traditionally used for the credit scoring problem. However, slight improvements in the reliability of the scores positively impacts financial companies. Therefore, exploring new features is a strategic task. This work analyzes the importance of new feature groups not commonly employed for the credit scoring task and others already used. We categorized features from open credit scoring datasets, such as German and Australian and compared their groups with the ones of a company dataset used in this work. Our dataset contains unusual feature groups, such as historical, geolocation, web behavior, and demographic data. In our analyzes, we first conducted bivariate tests with each feature-pair to assess their individual importance. Secondly, we ran XGBoost machine learning model with each feature group to evaluate each group importance. We also applied feature selection with binary Particle Swarm Optimization to assess the groups importance when combined. Next, we employed correlation tests to find inner and inter-correlation among the features groups. Finally, we used the company dataset and employed AdaBoost, Multilayer Perceptron, and XGBoost algorithms to find the best model for the task. Some of our main findings were that the unusual features added a slight improvement to registration features. We also detected reasonable inner correlation among some feature groups and found that all groups were relevant for the task with the Historical Group as the most promising. Lastly, XGBoost obtained the best performance over AdaBoost and Multilayer-perceptron for the task."
