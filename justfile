set shell := ["bash", "-lc"]

default:
    just --list

init:
    quarto check

doctor:
    quarto check
    quarto --version

preview:
    quarto preview

preview-render:
    quarto preview --render all

render:
    quarto render

clean:
    rm -rf build .quarto

rebuild:
    just clean
    just render

serve:
    python3 -m http.server 8000 --directory build

open:
    xdg-open http://127.0.0.1:8000

dev:
    just preview
