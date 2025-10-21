

## How to build?

### Using Docker

```shell
$ .docker/create_image.sh
```

You should now be able to build CVs simply by providing the folder name:

```shell
$ .docker/build.sh classic
```

Constraints: You need to be in the top-level folder of this project and the image has been created (see prior step).

You can also run a daemon and pass through build commands, suitable if you build many times in sequence:

```shell
$ .docker/daemon.sh
$ .docker/dbuild.sh classic
$ .docker/dbuild.sh modern
$ # ... and so on
```

This has originally been implemented by https://github.com/blang/latex-docker/tree/master

### Manual build

The following guide just briefly describes the requirements and build procedure as there are many ways to install a LaTeX distribution on various OS. Please create an issue, if this part is not helpful.

**Build Requirements**

You will need some minimal Texlive distrubution (The full texlive distribution is nearly 2GB large but you will need only a part of it). A good starting point is here: https://www.latex-project.org/get/#tex-distributions

If you want to install texlive from tug.org instead, you can use this guide: https://tug.org/texlive/

Users of various Linux distrubutions can also install texlive from their repositories.

This repo also contains a `texlive.profile` file in the project root, that can be used to install the minimum required texlive packages when manually installing texlive.


**Build Procedure**

 * Clone or download this project. 
 * Change to a template folder, which contains a `main.tex` file do
 * Edit the `main.tex` according to your CV credentials, optionally change settings and colors etc.
 * Run `pdflatex` (build/compile) 
 - The `main.pdf` should show the output.
