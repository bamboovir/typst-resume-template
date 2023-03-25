set shell:= ["bash", "-uceE"]

OUTPUT_FILENAME := "resume.pdf"
PROJECT_ROOT := `git rev-parse --show-toplevel`

default:
    @just --list

build:
    @typst --root "{{PROJECT_ROOT}}" --font-path "{{PROJECT_ROOT}}/assets/fonts/" resume.typ "{{OUTPUT_FILENAME}}"

dev:
    @typst --root "{{PROJECT_ROOT}}" --font-path "{{PROJECT_ROOT}}/assets/fonts/" --watch resume.typ "{{OUTPUT_FILENAME}}"

clean:
    rm -f *.pdf