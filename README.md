# UC Berkeley PhD thesis template

Pulled from [Paul Vojta's website](https://math.berkeley.edu/~vojta/tex/ucbthesis-phd.html) and slightly adapted.

## configuration

Make sure to set the variables in `src/configuration.tex`.
In addition, make sure to correctly set the `documentclass` in the beginning of files `src/thesis.tex` and `src/approvalpage.tex` if writing a masters thesis.

## targets

- `all` make everything
- `approval` make the approval page
- `pdf` make the pdf
- `clean` clean up everything
- `link` make symbolic links into the directory `pdf` of the approval page and the actual thesis

## gulp

There is a `gulpfile.js` included.
It simply runs the `all` target if anything in `src/` has changed.
