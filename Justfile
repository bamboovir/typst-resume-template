set shell:= ["bash", "-uceE"]

OUTPUT_FILENAME := "resume.pdf"

default:
    @just --list

build:
    @typst resume.typ "{{OUTPUT_FILENAME}}"

dev:
    @typst --watch resume.typ "{{OUTPUT_FILENAME}}"

clean:
    rm -f *.pdf