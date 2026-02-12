

## Project Structure

```
data/                   # Shared CV content (used by all templates)
  header.tex            # Name and tagline
  contact.tex           # Contact information
  profile.tex           # Profile / summary text
  skills.tex            # Skills section entries
  tools.tex             # Tools section entries
  education.tex         # Education entries
  experience/           # Individual work experience entries
    vts-staff.tex       # VTS Staff Engineer (2025+)
    vts-senior.tex      # VTS Senior Engineer (2022-2025)
    autovance-architect.tex  # Autovance/Quorum Architect (2014-2022)
    autovance-lead.tex       # Autovance/Quorum Team Lead (2016-2022)
    autovance-founder.tex    # Autovance API Dev/Founder (2014-2016)

sidebarleft/            # Full CV template (all entries)
  preamble.tex          # LaTeX preamble & command definitions
  main.tex              # Full CV document
  qr-code.png           # QR code image

resume/                 # Short resume template (selected entries)
  main.tex              # Resume document (subset of experience)
  preamble.tex -> ../sidebarleft/preamble.tex
  qr-code.png  -> ../sidebarleft/qr-code.png
```

All personal data lives in `data/`. Each template (`sidebarleft/`, `resume/`) uses `\input{../data/...}` to pull in the entries it needs. To customize which experience entries appear in the resume, comment or uncomment the `\input` lines in `resume/main.tex`.

## How to build?

### Using Docker

```shell
$ .docker/create_image.sh
```

You should now be able to build the CV by providing the folder name:

```shell
$ .docker/build.sh sidebarleft
$ .docker/build.sh resume
```

Constraints: You need to be in the top-level folder of this project and the image has been created (see prior step).

### Manual build

**Build Requirements**

You will need some minimal Texlive distrubution (The full texlive distribution is nearly 2GB large but you will need only a part of it). A good starting point is here: https://www.latex-project.org/get/#tex-distributions

If you want to install texlive from tug.org instead, you can use this guide: https://tug.org/texlive/

Users of various Linux distrubutions can also install texlive from their repositories.

This repo also contains a `texlive.profile` file in the project root, that can be used to install the minimum required texlive packages when manually installing texlive.


**Build Procedure**

 * Clone or download this project. 
 * Change to `sidebarleft` (full CV) or `resume` (short resume) folder
 * To customize entries, edit files in the `data/` directory
 * To choose which entries appear, edit the `\input` lines in the template's `main.tex`
 * Run `pdflatex main.tex` (build/compile) 
 - The `main.pdf` should show the output.
