---
title: "Efficient parallel upscaling of river drainage networks for large data sets"
date: 2026-01-28
publishDate: 2020-07-01T18:24:11.841425Z
authors:
    - Adriano Rolim da Paz
    - Rafael Lopes Mendonça
    - Ana Alice Rodrigues Dantas Almeida
    - Natalia Maria Mendes Silva
    - me
publication_types: ['article-journal']
abstract: "Extracting coarse-resolution river drainage networks from fine-resolution DEM or DTM is essential for large-scale hydrological and environmental modeling. Flow direction upscaling methods are preferred for preserving drainage patterns, but they face significant computational challenges when handling massive fine-resolution datasets. This study introduces eCOTAT+, an enhanced version of the COTAT+ algorithm, designed to improve computational efficiency through two key strategies: (i) tile-based domain partitioning to reduce memory usage by processing localized subsets of data sequentially, and (ii) OpenMP-based parallelization to accelerate execution using multi-core processors. The eCOTAT+ was applied to a 1-m LiDAR-derived DTM covering a 40×40 km region in northeastern Brazil (1.6 billion pixels) and upscaling it to 100 m resolution. Twelve tiling configurations and eleven parallelization schemes (1-20 cores) were tested. Results showed that intermediate tile sizes (~20×20 coarse-resolution cells) offered the best trade-off between runtime and memory demands. Tiny tiles lead to high overhead from frequent memory and file operations, while large tiles diminish the advantages of parallelization. Parallelization significantly reduced runtime up to 8–12 cores, beyond which efficiency declined. A novel runtime- memory elasticity metric was proposed to quantify the balance between execution time and memory use across configurations. The upscaled drainage networks retained hydrological realism compared to the fine-resolution reference, confirming that computational optimizations did not compromise output quality. The eCOTAT+ algorithm enables efficient and scalable flow direction upscaling for both macro- and microscale applications, facilitating the use of massive elevation datasets even in standard computing environments."
featured: false
publication: "*Computational Geosciences*"
tags: []
links:
  - type: pdf
    url: "https://www.researchgate.net/publication/400355214_Performance-oriented_parallel_upscaling_of_river_drainage_networks_for_large_data_sets"

hugoblox:
  ids:
    doi: "10.1007/s10596-026-10403-y"
---
