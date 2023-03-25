# Typst-Resume-Template

Aesthetic style inspired by the [Awesome-CV](https://github.com/posquit0/Awesome-CV) project.

This is not a perfect clone, the main purpose of this project is to explore and experiment with Typst's typography features.

## Development Environment

- Install Fonts

```bash
# https://github.com/Homebrew/homebrew-cask-fonts
brew tap homebrew/cask-fonts
brew install font-source-sans-pro
brew install font-roboto
```

- Install [Typst](https://github.com/typst/typst)

- Install [Just](https://github.com/casey/just)

## Build Resume

```bash
just build
```

## Interactive Development Resume

```bash
just dev
```

## Containerized Build

```bash
# TODO
docker run --rm -t -v \
  "$(pwd):/mnt" \
  -w "/mnt" \
  typst:latest \
  resume.typ
```

## Credit

[**Typst**](https://github.com/typst/typst) is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use.

[**FontAwesome**](https://fontawesome.com/) is the Internet's icon library and toolkit, used by millions of designers, developers, and content creators.

[**Roboto**](https://github.com/google/roboto) is the default font on Android and ChromeOS, and the recommended font for Google’s visual language, Material Design.

[**Source Sans Pro**](https://github.com/adobe-fonts/source-sans-pro) is a set of OpenType fonts that have been designed to work well in user interface (UI) environments.
