# UC Berkeley PhD thesis template

Pulled from [Paul Vojta's website](https://math.berkeley.edu/~vojta/tex/ucbthesis-phd.html) and slightly adapted.

## configuration

Make sure to set the variables in `src/configuration.tex`.
In addition, make sure to correctly set the `documentclass` in the beginning of files `src/thesis.tex` and `src/approvalpage.tex` if writing a masters thesis.

## required tooling

You obviously need LaTeX installed with a working version of `pdflatex`.
The only other software you need is `latexmk`.
If you are running TeX Live, you can install it using the package manager:

```
tlmgr install latexmk
```

## targets

- `all` make everything
- `approval` make the approval page
- `pdf` make the pdf
- `clean` clean up everything
- `link` make symbolic links into the directory `pdf` of the approval page and the actual thesis

## gulp

There is a `gulpfile.js` included.
You don't need to use it, but it is pretty convenient if you like to look at your changes instantly.
It simply runs the `all` target if anything in `src/` has changed.

In order for this to work, you need to have `npm` installed and gulp installed.
Assuming `npm` is installed, run the following:

```
npm install --global gulp-cli
```
