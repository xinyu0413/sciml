using Documenter, sciml

format = Documenter.HTML(edit_link="master", prettyurls=get(ENV, "CI", nothing) == "true")

About = "Introduction" => "index.md"

API = "API Reference" => "api.md"

PAGES = [About, API]

makedocs(sitename="SciML Notes",
    authors="Xinyu Chen",
    format=format,
    checkdocs=:exports,
    pages=PAGES,
    repo=Remotes.GitHub("xinyu0413", "sciml"),
)

deploydocs(
    repo="github.com/xinyu0413/sciml.jl.git",
    versions=["stable" => "v^", "v#.#.#"],
    devbranch="main",
)
