# Supplementary materials: Warped Diffusion for Latent Differentiation Inference


These are additional materials with a sampler for Bayesian nonparametric model based on the Dirichlet Diffusion Tree (DDT) and the Gaussian process (GP) for latent differentiation inference. 

![MCMC_spiral](https://github.com/masahironakanopr/warped-diffusion/assets/73105349/48659853-472d-4de2-9044-dd00e4ab0cfa)

![visualization_fashionMNIST](https://github.com/masahironakanopr/warped-diffusion/assets/73105349/e7b41c06-df1a-4abb-89d5-a75975cc3d22)


Requirements: 

- Matlab (We are using version 19b, but presumbly earlier versions would be expected to work properly.) with Statistics and Machine Learning Toolbox
- R

Third party tools:

- Splatter (https://www.bioconductor.org/packages/devel/bioc/vignettes/splatter/inst/doc/splatter.html)
- Infinite warped mixture model (iWMM) (https://github.com/duvenaud/warped-mixtures)
- PHATE (https://github.com/KrishnaswamyLab/PHATE)
- Tree data structure in a class (http://tinevez.github.io/matlab-tree/)

*(Several pipeline processes have been modified to work stand-alone.)* 

## In a nutshell

We suppose that we have initially stored the iWMM (https://github.com/duvenaud/warped-mixtures) and the tree data structure in a class (http://tinevez.github.io/matlab-tree/) in a working folder.

1. `` 
2. ``

Then you can see a Markov chain Monte Carlo (MCMC) evolution as is shown in `movies/MCMC_spiral.mp4`.


