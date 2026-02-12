# Repository Overview
- Purpose: LaTeX CV templates and supporting assets. The only checked-in template at present is `sidebarleft/` with `main.tex` and `qr-code.png`. Root `main.pdf` is a built artifact.
- Key tooling:
  - Build manually with `pdflatex main.tex` inside a template folder.
  - Build with Docker: `.docker/create_image.sh` then `.docker/build.sh <template>` (runs pdflatex in container, writes PDF to template dir).
  - Scripts: `scripts/test.sh <template-dir>` (cleans `main.pdf`, runs `pdflatex`), `scripts/testall.sh` (calls `test.sh` for several templates—most paths are absent in this branch and will currently fail).
- CI: `.github/workflows/buildall.yml` installs TeX Live on `ubuntu-latest` and runs `./scripts/testall.sh`. Additional workflows add stale labels and welcome issue comments.

# Build & Test Notes
- Dependencies: TeX Live packages (`texlive-base`, `texlive-latex-extra`, `texlive-fonts-extra`, etc.). `pdflatex` is required locally.
- Quick local check: `./scripts/test.sh ./sidebarleft` (ensure `pdflatex` available). If using Docker, prefer `.docker/build.sh sidebarleft`.
- `scripts/testall.sh` expects directories `classic`, `modern`, `two_column`, `infographics`, `rows`, `sidebar`, `sidebarleft`; only `sidebarleft` exists here. Update the script before relying on it.

# Editing Guidelines
- Keep LaTeX license headers intact.
- Avoid committing generated PDFs except when explicitly desired; `main.pdf` currently exists in root.
- Respect `.gitignore` (covers TeX aux files and some assets).

# Quick File Map
- `sidebarleft/main.tex` — primary template source.
- `.docker/*.sh` — dockerized build helpers.
- `scripts/test.sh`, `scripts/testall.sh` — build/test scripts.
- `.github/workflows/*` — CI configs.
- `texlive.profile` — minimal TeX Live install profile.
