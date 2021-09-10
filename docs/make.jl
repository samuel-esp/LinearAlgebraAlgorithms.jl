using Documenter, GraphBlasAlgorithmsFinal

makedocs(
    modules = [GraphBlasAlgorithmsFinal],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Samuel Esposito",
    sitename = "GraphBlasAlgorithmsFinal.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/samuel-esp/GraphBlasAlgorithmsFinal.jl.git",
    push_preview = true
)
