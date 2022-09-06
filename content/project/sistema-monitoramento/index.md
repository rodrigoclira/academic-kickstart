---
title: Sistema de Monitoramento em Tempo Real de Qualidade de Água de um Rio
summary: Projeto aprovado na chamada pública do NIC.BR
tags:
- IoT
- arduino
- pibic
date: "2019-01-01T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: Aplicação Web desenvolvida no projeto
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

# Material Externo

[Notícia publicada no Diário de Pernambuco](https://www.diariodepernambuco.com.br/noticia/vidaurbana/2020/10/pesquisadores-do-ifpe-propoem-tecnologia-para-verificar-a-qualidade-da.html)

[Notícia publicada no portal do IFPE](https://portal.ifpe.edu.br/noticias/campus-paulista-tem-projeto-aprovado-em-articulacao-pro-brumadinho)

[Notícia publicada no site do CGI.br](https://www.cgi.br/noticia/releases/uso-de-tecnologias-web-em-beneficio-de-brumadinho-mg-conheca-projetos-do-mover-se-na-web-que-comecam-a-ser-implementados/)

## Vídeo de Divulgação do Projeto
{{< youtube w4K-ripyrR0 >}}

## Apresentação da Semana Nacional de Ciências e Tecnologia do IFPE Campus Paulista

{{< youtube BB6DhS4MbDA >}}


<div style="position: relative; width: 100%; height: 0; padding-top: 56.2500%;
 padding-bottom: 48px; box-shadow: 0 2px 8px 0 rgba(63,69,81,0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden;
 border-radius: 8px; will-change: transform;">
  <iframe loading="lazy" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0;margin: 0;"
    src="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAEtT5B0cZw&#x2F;view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div>
<a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAEtT5B0cZw&#x2F;view?utm_content=DAEtT5B0cZw&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">Apresentação SNCT</a> de Rodrigo Lira


## Referências

Safe Drinking Water Foundation (SDWF). TDS and PH. Acessível em: https://www.safewater.org/fact-sheets-1/2017/1/23/tds-and-ph . Último acesso: 21 de janeiro de 2020.

LIBÂNIO, M. Fundamentos de qualidade e tratamento de água. Campinas: Átomo, 2010.
