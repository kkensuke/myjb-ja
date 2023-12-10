# article
> last update: {sub-ref}`today`
<div style="width: 790px;"></div>


## `preamble.tex`
```latex
% set margins
\usepackage[top=15truemm,bottom=15truemm,left=15truemm,right=15truemm]{geometry}
\usepackage[dvipdfmx]{graphicx,hyperref,xcolor}
% math
\usepackage{amsmath,amsthm,amssymb,mathtools,mathrsfs}
% physics
\usepackage{physics}
% itembox
\usepackage{ascmac}
% algorithm
\usepackage{algorithm,algorithmic}
% vector graphics
\usepackage{tikz}
% author and affiliation
\usepackage{authblk}
% comment
\usepackage{comment}
% image position
\usepackage{here}
% Align table columns on decimal point
\usepackage{dcolumn}


% style setting
% ---------------------------------------------------------------------------- %
\allowdisplaybreaks[1] % allow page breaks in equations. takes an integer from 0-4. 4 is the most permissive.
\renewcommand\Authfont{\fontsize{14}{14.4}\selectfont}
\renewcommand\Affilfont{\fontsize{10}{10.8}\itshape}
\renewcommand{\baselinestretch}{1.25}
% ---------------------------------------------------------------------------- %


% number figures, tables and equations within the sections
% ---------------------------------------------------------------------------- %
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}
% ---------------------------------------------------------------------------- %


% Logic and proofs
% ---------------------------------------------------------------------------- %
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{example}{Example}[section]
\newtheorem{exercise}{Exercise}[section]

\theoremstyle{remark}
\newtheorem{remark}{Remark}[section]
% ---------------------------------------------------------------------------- %
```


## `main.tex`

If you want to use `report` class, change `article` to `report` in the first line.

```latex
\documentclass[12pt,dvipdfmx]{article}
\input{preamble}

\title{Title}
\author{Your Name}
\affil{Dept.\ of Physics, The University of ~, address, city, country}
\date{\today}
\begin{document}
\maketitle
\tableofcontents


\input{sections/intro.tex}
\input{sections/asdf.tex}

\newpage
\bibliographystyle{abbrv}
\bibliography{ref}
\newpage
\appendix
\input{sections/appendix.tex}

\end{document}
```

### `sections/intro.tex`
```latex
\section{Introduction}
\lipsum[1]
```

### `sections/asdf.tex`
```latex
\section{asdf}
\lipsum[2]
```

### `sections/appendix.tex`
```latex
\section{Apple}
\lipsum[3]
```



## Output
<div style="position: relative; margin: 0 auto; width: 90%; padding-bottom: 111%;">
<iframe style="position: absolute; width: 100%; height: 100%;" src="pdf/article.pdf"></iframe>
    <p>
        Your browser does not support PDF files.
        <a href="pdf/article.pdf">Download the file instead</a>
    </p>
</div>