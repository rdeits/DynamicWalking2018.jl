# Dynamic Walking 2018: Julia Robotics

[![Build Status](https://travis-ci.org/rdeits/DynamicWalking2018.jl.svg?branch=master)](https://travis-ci.org/rdeits/DynamicWalking2018.jl)

To follow along with the presentation, take a look at the Jupyter notebooks in the `notebooks` folder. To get started with Julia, check out the [getting started notebook](https://github.com/rdeits/DynamicWalking2018.jl/blob/master/notebooks/1.%20Introducing%20Julia.ipynb).

## Quickstart

If you want to run these demo notebooks yourself, you'll need to install:

* Julia
* IJulia (for using Julia in Jupyter notebooks)
* This package

### Installing Julia

Download a Julia binary from https://julialang.org/downloads/ and follow the [installation instructions](https://julialang.org/downloads/platform.html#windows).

### Installing IJulia

In Julia, do:

```julia
Pkg.add("IJulia")
```

### Installing this tutorial package

In Julia, do:

```julia
Pkg.clone("https://github.com/rdeits/DynamicWalking2018.jl")
```

Note that this will take a few minutes. We're demonstrating a lot of different Julia packages here, so this tutorial has a lot of dependencies, which may take a bit of time to download. These dependencies will all be downloaded for you automatically.

For example, you'll be getting:

* [RigidBodyDynamics.jl](https://github.com/JuliaRobotics/RigidBodyDynamics.jl): a library for efficient and flexibile rigid body mechanism kinematics and dynamics
* [Plots.jl](https://github.com/JuliaPlots/Plots.jl): a high-level plotting framework with support for various backends
* [GR.jl](https://github.com/jheinen/GR.jl): a high-performance plotting backend based on the GR framework
* [JuMP.jl](https://github.com/JuliaOpt/JuMP.jl): a modeling language for optimization
* [Ipopt.jl](https://github.com/JuliaOpt/Ipopt.jl): JuMP-compatible bindings to the Ipopt optimization solver
* [MeshCat.jl](https://github.com/rdeits/MeshCat.jl): a 3D visualizer that runs in the browser or a Jupyter notebook

and many more useful tools.

### Starting the Tutorial

To launch Jupyter and access the notebooks found in this tutorial, you can do (in Julia):

```julia
using IJulia
notebook(dir=Pkg.dir("DynamicWalking2018", "notebooks"))
```

or simply run `jupyter notebook` from the command line, if you already have it installed.

### Notes on Startup

The first time you run a given function, Julia compiles native code for that particular function and its input types. Try running functions a few times to get a sense for how long they actually take once they've been compiled.
