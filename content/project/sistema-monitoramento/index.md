---
title: Sistema de Monitoramento em Tempo Real de Qualidade de Água de um Rio
summary: Projeto aprovado na chamada pública do NIC.BR
tags:
- IoT
- arduino
date: "2019-01-01T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: 
  focal_point: Smart

links:
#- icon: twitter
#  icon_pack: fab
#  name: Follow
#  url: https://twitter.com/georgecushen

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""
draft: false
# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
#slides: example
---

A água é essencial para a vida e por isso deve-se criar formas de monitorar as principais fontes desse recurso. Tragédias recentes, como os rompimentos das barragens em Brumadinho e Mariana fizeram com que rejeitos de minérios alcançassem rios e contaminasse a principal fonte de captação de água das cidades dessas regiões. 

Sabe-se que é possível medir a qualidade da água através de diversos parâmetros. O valor dos sólidos dissolvidos totais (do inglês Total Dissolved Solids - TDS) representa a concentração total de substâncias dissolvidas na água. O TDS é composto por sais inorgânicos, além de uma pequena quantidade de matéria orgânica (SDWF, 2020). Por sua vez, a turbidez é um parâmetro físico relacionado à água. Ela é considerada um dos principais parâmetros para a determinação de sua qualidade, principalmente àquelas destinadas ao consumo humano, e está relacionada à capacidade ótica de absorção e reflexão da luz, e não depende tão somente da concentração dos sedimentos em suspensão, mas também de aspectos como tamanho, composição mineral, cor e quantidade de matéria orgânica (LIBÂNIO, 2010).
Os dois parâmetros citados anteriormente podem ser medidos através de sensores que estejam instalados na bacia, nascente de um rio ou até mesmo estações de tratamento de água (ETA) para que as ações de preservação e as precauções necessárias para quem utiliza aquela água sejam tomadas. Uma rede de sensores espalhados numa bacia hidrográfica ou numa ETA pode ser fundamental para uma rápida tomada de decisão, além de evitar gastos com coletas manuais. 

A proposta deste projeto é desenvolver um protótipo de estação de monitoramento de qualidade da água de baixo custo usando plataforma Arduino/ESP. A estação desenvolvida irá monitorar a qualidade da água de um rio e enviar os dados coletados através de HTTP ou MQTT para um sistema de informação geográfico (SIG). A estação também contará com painéis solares que irão ser responsáveis pela alimentação de todo os componentes e que permitirão que ela funcione de forma autossuficiente. Os testes serão realizados em ambiente controlado a fim de simular uma bacia hidrográfica. Também será criado um SIG utilizando a framework Django (backend) e Bootstrap (frontend). Ele  será responsável por agregar todas as informações enviadas das estações de monitoramento de qualidade de água e permitirá analisar o histórico de coleta da estação e as respectivas localizações geográficas dessas informações. Além do gerenciamento das informações recebidas pelas estações, o sistema permitirá a criação de alertas que possam ser acionados caso os valores dos sensores superem limites pré-estabelecidos pelo usuário. 

Este projeto foi aprovado na chamada pública [Mover-se na web: Articulação Pró-Brumadinho](https://ceweb.br/projetos/moverse-na-web-brumadinho/) do NIC.BR. 

Referências

Safe Drinking Water Foundation (SDWF). TDS and PH. Acessível em: https://www.safewater.org/fact-sheets-1/2017/1/23/tds-and-ph . Último acesso: 21 de janeiro de 2020.

LIB NIO, M. Fundamentos de qualidade e tratamento de água. Campinas: Átomo, 2010.
