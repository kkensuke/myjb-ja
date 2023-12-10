# revtex4-2
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
% comment
\usepackage{comment}
% dummy text
\usepackage{lipsum}
% image position
\usepackage{here}
% Align table columns on decimal point
\usepackage{dcolumn}


% style setting
% ---------------------------------------------------------------------------- %
\allowdisplaybreaks[1] % allow page breaks in equations. takes an integer from 0-4. 4 is the most permissive.
\renewcommand{\baselinestretch}{1}
\renewcommand{\abstractname}{\vspace{-\baselineskip}}
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
```latex
\documentclass[dvipdfmx,twocolumn,preprintnumbers,superscriptaddress,nofootinbib]{revtex4-2}
% landscape
% footinbib for PRL

\input{preamble}

\begin{document}


\title{Title}

\author{Name 1}
    \email[]{name1(at)asdf.ac.jp}
    \affiliation{
    Dept.\ of Physics, The University of ~, address, city, country
    }

\author{Name 2}
    \email[]{name2(at)asdf.ac.jp}
    \affiliation{
    Dept.\ of Physics, The University of ~, address, city, country
    }

\date{\today}

\begin{abstract}
    \lipsum[1]
\end{abstract}


\maketitle


\input{sections/introduction.tex}
\input{sections/asdf.tex}
\newpage
\bibliographystyle{abbrv}
\bibliography{ref}

\newpage
\appendix
\input{sections/appendix.tex}

\end{document}
```

### `sections/introduction.tex`
```latex
\section{Introduction}
\lipsum[1-5]
```

### `sections/asdf.tex`
```latex
\section{asdf}
\lipsum[1-5]
```

### `sections/appendix.tex`
```latex
\section{Apple}
\lipsum[1-4]
```


## Output
<div style="position: relative; margin: 0 auto; width: 90%; padding-bottom: 111%;">
<iframe style="position: absolute; width: 100%; height: 100%;" src="pdf/revtex4-2.pdf"></iframe>
    <p>
        Your browser does not support PDF files.
        <a href="pdf/revtex4-2.pdf">Download the file instead</a>
    </p>
</div>