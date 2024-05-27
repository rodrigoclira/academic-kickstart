---
title: "Applying Reinforcement Learning to Combine Multiple Swarm-based Algorithms"
event: 9th Latin America - Conference on Computation Intelligence (LA-CCI 2023)
event_url: ""
draft: false

location:
address:
  #street: 450 Serra Mall
  city: Recife
  region: Pernambuco
  #postcode: '94305'
  country: Brasil


summary: Apresentação do trabalho científico "Applying Reinforcement Learning to Combine Multiple Swarm-based Algorithms" (LA-CCI 2023).
abstract: "Swarm intelligence is a very efficient field for the optimization of high-dimensional functions. Nevertheless, choosing the best swarm-based algorithm is still challenging because it requires expertise in the field. Here, we propose to use reinforcement learning to dynamically select the swarm-based techniques to solve a benchmark function based on the current simulation state. First, we created a swarm capable of modifying its metaphor over iteration. Next, we created a reinforcement learning environment to solve benchmark functions. Then, we trained Proximal Policy Optimization to select the well-suited metaheuristic (GWO, GPSO or LPSO) to solve Rastrigin and F3 based on the information retrieved from the simulation. Our proposal reached competitive results in all simulated scenarios. Moreover, we found that the use of GPSO is consistently more efficient at the middle of the convergence and that using GWO is more efficient than using the other selected algorithms at the beginning of the convergence. Future works will bring us more robustness in combining swarm-based techniques while decreasing the computational cost. Thus, we show that reinforcement learning has the potential to overcome the effort of choosing the well-suited metaheuristic for a specific problem."

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: "2023-10-31T17:15:00Z"
#date_end: "2030-06-01T15:00:00Z"
all_day: false

# Schedule page publish date (NOT talk date).
#publishDate: "2017-01-01T00:00:00Z"
authors: [ admin ,"Mariana Macedo", "Hugo Valadares Siqueira", "Carmelo J. A. Bastos-Filho"]
tags: ["doutorado", "ppo", "pso", "gwo", "swarm intelligence", "reinforcement learning","talk"]

# Is this a featured talk? (true/false)
featured: true

image:
  caption: ''
  focal_point: Right

links:
#- icon: twitter
#  icon_pack: fab
#  name: Follow
#  url: https://twitter.com/georgecushen
#url_code: "https://scratch.mit.edu/projects/400783603/"
#url_pdf: "https://sol.sbc.org.br/index.php/ctrle/article/view/8926"
url_slides: "https://docs.google.com/presentation/d/e/2PACX-1vSbE4VhbB5g93wNH0O3sH2z4U0AzwgXBQcgEPX8o_UlcvEqp1Pf-F25F18PyTsObzfXjsS2_wYEF0wi/embed?start=false&loop=false&delayms=3000"

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
#slides: example
slides: 

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: 
 - rl-mh

# Enable math on this page?
math: true
---

{{< gdocs src="https://docs.google.com/presentation/d/e/2PACX-1vSbE4VhbB5g93wNH0O3sH2z4U0AzwgXBQcgEPX8o_UlcvEqp1Pf-F25F18PyTsObzfXjsS2_wYEF0wi/embed?start=false&loop=false&delayms=3000" >}}
