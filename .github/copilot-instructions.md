# Copilot Guidance for this Repo

## Context
- This project is a set of LaTeX CV templates. Only `sidebarleft/` is present in this branch; other template names referenced in scripts may be missing.
- CI installs TeX Live and runs `./scripts/testall.sh`, which currently fails if missing template directories are not adjusted.

## How to build
- Local: install TeX Live (`texlive-base`, `texlive-latex-extra`, `texlive-fonts-extra`), then run `pdflatex main.tex` inside `sidebarleft/`.
- Docker (preferred to avoid local TeX installs):
  1) `.docker/create_image.sh`
  2) `.docker/build.sh sidebarleft`

## How to test
- Targeted: `./scripts/test.sh ./sidebarleft` (requires `pdflatex` in PATH).
- `scripts/testall.sh` enumerates multiple templates; update the list before using it or expect failures for missing paths.

## Editing tips
- Keep LaTeX headers/licensing comments intact.
- Avoid committing generated PDFs unless explicitly required (`main.pdf` in root is an existing artifact).
- Respect `.gitignore`; do not add TeX auxiliary outputs.

## PR hygiene
- Describe which template you touched and how to build it.
- If tests are skipped due to missing `pdflatex`, state that explicitly. Prefer Docker builds in CI/CD discussions.
