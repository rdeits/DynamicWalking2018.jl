using DynamicWalking2018
using Base.Test

const module_tempdir = joinpath(Base.tempdir(), string(module_name(DynamicWalking2018)))

using Conda
if is_windows()
    Conda.add("nbconvert") # jupyter doesn't seem to come with nbconvert on windows?
end

@testset "example notebooks" begin
    using IJulia

    outputdir = module_tempdir
    if !isdir(outputdir)
        mkpath(outputdir)
    end
    jupyter = IJulia.jupyter
    for f in filter(x -> endswith(x, "ipynb"), readdir("../notebooks"))
        if contains(f, "Julia is Fast") && !is_linux()
            # Can't run the gcc demo on osx or windows
            continue 
        end
        notebook = joinpath("..", "notebooks", f)
        output = joinpath(outputdir, f)
        @test begin run(`$jupyter nbconvert --to notebook --execute $notebook --output $output --ExecutePreprocessor.timeout=500`); true end
    end
end
