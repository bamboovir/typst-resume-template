set shell:= ["bash", "-uceE"]

PROJECT_ROOT := `git rev-parse --show-toplevel`
OUTPUT_FILENAME := "resume.pdf"
TEMPLATE := "latex"
# TEMPLATE := "awesome"
FONT_PATH := "." / "templates" / TEMPLATE / "assets" / "fonts"
TYPST_IMAGE_REF := "ghcr.io/typst/typst:latest"

default:
    @just --list

build:
    @typst --font-path "{{FONT_PATH}}" compile resume.typ "{{OUTPUT_FILENAME}}"

dev:
    @typst --font-path "{{FONT_PATH}}" watch resume.typ "{{OUTPUT_FILENAME}}"

font:
    @typst --font-path "{{FONT_PATH}}" --fonts --variants

clean:
    @rm -f *.pdf

containerized-build:
    @podman run --rm -t \
        -v "{{PROJECT_ROOT}}:/mnt" \
        -w "/mnt" \
        "{{TYPST_IMAGE_REF}}" \
        typst --font-path "{{FONT_PATH}}" compile resume.typ "{{OUTPUT_FILENAME}}"

containerized-dev:
    @podman run --rm -it -v \
        "{{PROJECT_ROOT}}:/mnt" \
        -w "/mnt" \
        --init \
        "{{TYPST_IMAGE_REF}}" \
        typst --font-path "{{FONT_PATH}}" watch resume.typ "{{OUTPUT_FILENAME}}"

containerized-font:
    @podman run --rm -t -v \
        "{{PROJECT_ROOT}}:/mnt" \
        -w "/mnt" \
        "{{TYPST_IMAGE_REF}}" \
        typst --font-path "{{FONT_PATH}}" fonts --variants