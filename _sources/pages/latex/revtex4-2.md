# revtex4-2
> last modified: {sub-ref}`today`

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
% image position
\usepackage{here}
% Align table columns on decimal point
\usepackage{dcolumn}


% style setting
% ---------------------------------------------------------------------------- %
\allowdisplaybreaks[1]
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
\allowdisplaybreaks[1]

\begin{document}


\title{Asdf of asdf for asdf}

\author{Qwerty Qwerty}
    \email[]{qwerty(at)asdf.asdf.ac.jp}
    \affiliation{
    Dept.\ of Physics, The University of Qwerty, address
    }

    \author{Asdf Asdf}
    \email[]{asdf(at)asdf.asdf.ac.jp}
    \affiliation{
    Dept.\ of Physics, The University of Asdf, address
    }

\date{\today}

\begin{abstract}
    abstract.
\end{abstract}

\maketitle


\section{Introduction}
asdf asdf asdf asdf asdf asdf

\end{document}
```