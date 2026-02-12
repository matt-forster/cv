

## How to build?

### Using Docker

```shell
$ .docker/create_image.sh
```

You should now be able to build the CV by providing the folder name:

```shell
$ .docker/build.sh sidebarleft
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
 * Change to the `sidebarleft` folder, which contains the `main.tex` file
 * Edit the `main.tex` according to your CV credentials, optionally change settings and colors etc.
 * Run `pdflatex main.tex` (build/compile) 
 - The `main.pdf` should show the output.
