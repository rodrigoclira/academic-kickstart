---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Swarm Dynamics Frameworks"
subtitle: ""
summary: ""
authors: [admin]
tags: ["swarm intelligence"]
categories: []
date: 2026-01-27T10:10:00-03:00
lastmod:
featured: true
draft: false

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

## Interaction Networks

Oliveira et. al. [1] proposed a framework named Interaction Networks (IN) that captures the social interactions between individuals in Swarm Intelligence metaheuristics. This network-based approach provides a meso-level perspective between the micro-level rules followed by individual agents and the macro-level performance of the metaheuristic.

In an Interaction Network, nodes represent agents in the swarm, while the edges represent the interactions among them. The network I(t) describes the interactions at time *t*, with edges I$_{ij}$ indicating the extent to which agent *i* influences the movement of agent *j*. Thus, Interaction Network captures actual information exchanges that occur during the optimisation.

## Search Trajectory Networks

Introduced by Ochoa et. al. [2], Search Trajectory Networks (STNs) provide a tool for analysing and visualising the behaviour of algorithms during optimisation. STNs transform the complex search trajectories of algorithms into network representations that can be quantitatively analysed.

In an STNs, nodes represent locations in the search space, and edges represent transitions between these locations. A location is defined as a subset of the search space resulting from partitioning, and each search trajectory is a sequence of locations visited by representative solutions. Unlike Interaction Networks that focus on agent relationships, STNs focus on how algorithms traverse the search space.

STNs can be constructed for any metaheuristic algorithm, whether population-based or single-solution based. Moreover, STNs from different algorithms can be merged into a single model. In the STN framework, each node represents a location in the search space containing at least one representative solution from the algorithm's trajectory [3]. For continuous optimisation problems, these locations are typically defined by partitioning the search space into hypercubes of a predetermined size, effectively mapping the high-dimensional solution space onto a more manageable network representation while preserving the essential characteristics of the search behaviour.

## Improvement Frequency and Population Turnover

Hayward and Engelbrecht [4] introduced two metrics to characterise swarm dynamics in metaheuristics: Improvement Frequency and Population Turnover. These two metrics provide simple yet effective ways to visualise and analyse the fitness behaviour of swarm-based metaheuristics.

Improvement Frequency tracks when agents improve their fitness during the search process. It reveals patterns of ``freshness'' in the population, with coloured clusters indicating active improvement periods and uncoloured spaces showing information staleness. The temporal patterns in these improvements help identify how information propagates through the swarm.

Population Turnover measures the breadth of good information by tracking how many agents improved their fitness at each iteration. It helps identify distinct behaviour stages in the algorithm's execution,  revealing when exploration or exploitation dominates the search process.

Together, these metrics provide insights into how information spreads and influences the swarm over time. When visualised, they create distinctive patterns that characterise different metaheuristics and their behaviour on specific problems.

## Referências

[1] Oliveira, M., Bastos-Filho, C.J.A., Menezes, R.: Using network science to assess particle swarm optimizers. Social Network Analysis and Mining 5(1), 3 (Jan 2015). https://doi.org/10.1007/s13278-015-0245-5

[2] Ochoa, G., Malan, K.M., Blum, C.: Search trajectory networks: A tool for analysing and visualising the behaviour of metaheuristics. Applied Soft Computing 109, 107492 (2021). https://doi.org/10.1016/j.asoc.2021.107492

[3] Narvaez-Teran, V., Ochoa, G., Rodriguez-Tello, E.: Search trajectory networks applied to the cyclic bandwidth sum problem. IEEE Access 9, 151266–151277 (2021). https://doi.org/10.1109/ACCESS.2021.3126015

[4] heuristic search behaviour characteristics. In: Proceedings of the Companion Conference on Genetic and Evolutionary Computation. p. 1562–1569. GECCO ’23 Companion, Association for Computing Machinery, New York, NY, USA (2023). https://doi.org/10.1145/3583133.3596338