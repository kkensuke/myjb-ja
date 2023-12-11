# Thesis
> last update: {sub-ref}`today`
<div style="width: 790px;"></div>


## `preamble.tex`
```latex
% set margins
\usepackage[top=15truemm,bottom=15truemm,left=15truemm,right=15truemm]{geometry}
\usepackage[dvipdfmx]{graphicx,hyperref,color}
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
% author
\usepackage{authblk}
% url
\usepackage{url}
% color
\usepackage{xcolor}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    %urlcolor=cyan,
}
% show line number
\usepackage{lineno}
\linenumbers % comment out to hide line number
% make header
\usepackage{fancyhdr}
\pagestyle{fancy}
\lhead{\leftmark}
\rhead{}
\cfoot{\thepage} % remove page number at the bottom
\renewcommand{\chaptermark}[1]{\markboth{Chpater \thechapter.\ #1}{}} % leftmark for english
% \renewcommand{\chaptermark}[1]{\markboth{第\ \normalfont\thechapter\ 章~#1}{}} % leftmark for japanese
% \renewcommand{\sectionmark}[1]{\markright{\thesection #1}{}} % rightmark


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
```latex
\documentclass[12pt,dvipdfmx]{report}
\input{preamble}


\title{}
\author{}
\affil{}
\date{}

\begin{document}


\newpage
\input{chapters/0-title.tex}
\newpage
\input{chapters/0-abstract.tex}

\newpage
\tableofcontents

\newpage
\input{chapters/0-symbols.tex}
\newpage
\input{chapters/0-intro.tex}

\newpage
\input{chapters/1-asdf.tex}

\newpage
\bibliographystyle{unsrt}
\bibliography{ref}

\newpage
\appendix
\input{chapters/9-appendix.tex}

\end{document}
```

### `chapters/0-title.tex`
```latex
\begin{titlepage}
    \begin{center}
        \vspace*{1cm}

        \textbf{\LARGE Title}

        \vspace{0.5cm}
        % {\LARGE Thesis Subtitle}

        \vspace{1.5cm}

        \textbf{\LARGE Your Name}

        \vfill

        \Large
        A thesis presented for the degree of ...

        % \includegraphics[width=0.4\textwidth]{university.png}

        Department of Physics, Graduate School of Science,\\
        The University of ..., Country\\
        \today

    \end{center}
\end{titlepage}
```

### `chapters/0-abstract.tex`
```latex
\thispagestyle{plain}
\begin{center}
    \null\vspace{\fill}
    
    \textbf{\Large Abstract}
    
    abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract abstract 
    
    \vspace{\fill}
\end{center}
```

### `chapters/0-symbols.tex`
```latex
\chapter*{List of Symbols}
\addcontentsline{toc}{chapter}{List of Symbols}
\begin{tabular}{c p{1\textwidth}}
    $\bbR$ & Real number \\
    $\bbC$ & Complex number \\
    $\delta_{ij}$ & Kronecker delta \\
    $I$ & Identity matrix \\
    $\calH$ & Hilbert space \\
    $\calO$ & Big-O notation \\
    $i,j,k,l;\; p,q,r,s$ & Indices \\
\end{tabular}



\chapter*{Glossary and Abbreviations}
\addcontentsline{toc}{chapter}{Glossary and Abbreviations}
\begin{tabular}{c p{1\textwidth}}
    ML & Machine Learning \\
    TN & Tensor Network \\
    MPS & Matrix Product State \\
    SPSA & Simultaneous Perturbation Stochastic Approximation \\
    RKHS & Reproducing Kernel Hilbert Space \\
    SVM & Support Vector Machine \\
    SGD & Stochastic Gradient Descent \\
\end{tabular}
```

### `chapters/0-intro.tex`
```latex
\chapter{Introduction}
\lipsum[1]
```

### `chapters/1-asdf.tex`
```latex
\chapter{asdf}
\lipsum[1]
```

### `chapters/9-appendix.tex`
```latex
\chapter{Apple}
\lipsum[1]
```



## Output
<div style="position: relative; margin: 0 auto; width: 90%; padding-bottom: 111%;">
<iframe style="position: absolute; width: 100%; height: 100%;" src="pdf/thesis.pdf"></iframe>
    <p>
        Your browser does not support PDF files.
        <a href="pdf/thesis.pdf">Download the file instead</a>
    </p>
</div>