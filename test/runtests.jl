using DynamicWalking2018
using Test
using NBInclude

using Conda
Conda.add("numpy")

@testset "example notebooks" begin
    mktempdir() do outputdir
        # jupyter = IJulia.jupyter
        for f in filter(x -> endswith(x, "ipynb"), readdir("../notebooks"))
            if occursin("Julia is Fast", f) && !Sys.islinux()
                # Can't run the gcc demo on osx or windows
                continue
            end
            notebook_module = Module()
            @eval(notebook_module, using InteractiveUtils)
            notebook = joinpath("..", "notebooks", f)
            cd(dirname(notebook)) do
                nbinclude(notebook_module, notebook)
            end
        end
    end
end
