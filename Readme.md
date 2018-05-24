# Dynamic Walking 2018: Julia Robotics

[![Build Status](https://travis-ci.org/rdeits/DynamicWalking2018.jl.svg?branch=master)](https://travis-ci.org/rdeits/DynamicWalking2018.jl)

To follow along with the presentation, take a look at the Jupyter notebooks in the `notebooks` folder.

## Quickstart

### Installing Julia

If you just want to try out Julia itself, all you need to do is download a Julia binary from https://julialang.org/downloads/ and follow the [installation instructions](https://julialang.org/downloads/platform.html#windows).

**Important**: we've tested everything with the basic command line version of Julia. Please do *not* use the JuliaPro distribution for this tutorial.

Now you're ready to write Julia code and install other packages.

### Using Julia In Jupyter Notebooks

[Jupyter notebooks](http://jupyter.org/) are a great way to write interactive, descriptive code and to integrate code with data, graphs, and other results. Julia works great with Jupyter, and we'll run this tutorial inside a collection of notebooks.

To use Julia inside a Jupyter notebook, you will also need to install the `IJulia` package.

Start Julia, then run:

```julia
Pkg.add("IJulia")
```

To start up Jupyter, you can run (in Julia):

```julia
using IJulia
notebook(dir=pwd())
```

or if you're already a Jupyter user, you can simply run `jupyter notebook` as usual.

### Installing this Entire Tutorial

If you want all of the packages necessary to run this entire tutorial, then you just need to install this tutorial as another Julia package.

In Julia, do:

```julia
Pkg.clone("https://github.com/rdeits/DynamicWalking2018.jl")
```

Note that this will take a few minutes. We're demonstrating a lot of different Julia packages here, so this tutorial has a lot of dependencies, which may take a bit of time to download.

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

## Notes on Startup

The first time you run a given function, Julia compiles native code for that particular function and its input types. Try running functions a few times to get a sense for how long they actually take once they've been compiled.
