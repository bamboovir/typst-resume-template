set shell:= ["bash", "-uceE"]

PROJECT_ROOT := `git rev-parse --show-toplevel`
OUTPUT_FILENAME := "resume.pdf"
TEMPLATE := "latex"
# TEMPLATE := "awesome"
FONT_PATH := PROJECT_ROOT / "templates" / TEMPLATE / "assets" / "fonts"

default:
    @just --list

build:
    @typst --root "{{PROJECT_ROOT}}" --font-path "{{FONT_PATH}}" resume.typ "{{OUTPUT_FILENAME}}"

dev:
    @typst --root "{{PROJECT_ROOT}}" --font-path "{{FONT_PATH}}" --watch resume.typ "{{OUTPUT_FILENAME}}"

font:
    @typst --font-path "{{FONT_PATH}}" --fonts --variants

clean:
    rm -f *.pdf