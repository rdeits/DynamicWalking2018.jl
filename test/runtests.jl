using DynamicWalking2018
using Test

using Conda
if Sys.iswindows()
    Conda.add("nbconvert") # jupyter doesn't seem to come with nbconvert on windows?
end
Conda.add("numpy")

@testset "example notebooks" begin
    using IJulia

    mktempdir() do outputdir
        jupyter = IJulia.jupyter
        for f in filter(x -> endswith(x, "ipynb"), readdir("../notebooks"))
            if occursin("Julia is Fast", f) && !Sys.islinux()
                # Can't run the gcc demo on osx or windows
                continue
            end
            notebook = joinpath("..", "notebooks", f)
            output = joinpath(outputdir, f)
            cd(dirname(notebook)) do
                @test begin run(`$jupyter nbconvert --to notebook --execute $notebook --output $output --ExecutePreprocessor.timeout=500`); true end
            end
        end
    end
end
