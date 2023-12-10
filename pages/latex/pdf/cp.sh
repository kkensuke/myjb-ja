#!/bin/bash

set -e
set -u


cp -f ~/My\ Drive/app/github/latex-template/article/main.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/article.pdf
cp -f ~/My\ Drive/app/github/latex-template/beamer/main.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/beamer.pdf
cp -f ~/My\ Drive/app/github/latex-template/revtex4-2/main.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/revtex4-2.pdf
cp -f ~/My\ Drive/app/github/latex-template/thesis/main.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/thesis.pdf

mkdir -p ~/My\ Drive/app/github/jb-public/myjb-ja/_build/html/pages/latex/pdf

ln -sf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/article.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/_build/html/pages/latex/pdf/article.pdf
ln -sf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/beamer.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/_build/html/pages/latex/pdf/beamer.pdf
ln -sf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/revtex4-2.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/_build/html/pages/latex/pdf/revtex4-2.pdf
ln -sf ~/My\ Drive/app/github/jb-public/myjb-ja/pages/latex/pdf/thesis.pdf ~/My\ Drive/app/github/jb-public/myjb-ja/_build/html/pages/latex/pdf/thesis.pdf
