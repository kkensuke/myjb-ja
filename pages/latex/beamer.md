# beamer
> last update: {sub-ref}`today`
<div style="width: 790px;"></div>


## `preamble.tex`
```latex
% mathtools: math tools, mathrsfs: RSFS fonts
\usepackage{mathtools,mathrsfs}
% physics
\usepackage{physics}
% algorithm
\usepackage{algorithm,algorithmic}
% vector graphics
\usepackage{tikz}
\usetikzlibrary{quantikz}
% comment
\usepackage{comment}
% dummy text
\usepackage{lipsum}
% image position
\usepackage{here}
```


## `beamer-preamble.tex`
```latex
% figure caption
\usepackage{caption}
\captionsetup[figure]{labelformat=empty}
% font family
\usepackage{helvet}
\renewcommand{\kanjifamilydefault}{\gtdefault} % for japanese


% theme
\usetheme{Madrid}
\usefonttheme{professionalfonts}
\useoutertheme[height=0cm,width=1.5cm,left]{sidebar}


% frame number
\setbeamertemplate{frametitle}{
    \nointerlineskip
    \begin{beamercolorbox}[wd=\paperwidth,ht=2.25ex,dp=0.75ex]{frametitle} % set ht
        \hspace*{1ex}\insertframetitle
        \hfill\insertframenumber/\inserttotalframenumber\hspace*{8ex}
        % \hfill\insertframenumber/{set total framenumber manually}\hspace*{8ex}
    \end{beamercolorbox}
}


% hides nvigation buttons at bottom
\setbeamertemplate{navigation symbols}{}


% Remove title and name from sidebar
\makeatletter
\setbeamertemplate{sidebar \beamer@sidebarside}%{sidebar theme}
{
    \beamer@tempdim=\beamer@sidebarwidth%
    \advance\beamer@tempdim by 10pt%
    \insertverticalnavigation{\beamer@sidebarwidth}%
    \vfill
    \ifx\beamer@sidebarside\beamer@lefttext%
    \else%
    \usebeamercolor{normal text}%
    \llap{\usebeamertemplate***{navigation symbols}\hskip0.1cm}%
    \vskip5pt%
    \fi%
}%
\makeatother


% show toc at the beginning of each section
\AtBeginSection[]
{
    \begin{frame}
        \frametitle{Table of Contents}
        \tableofcontents[currentsection]
    \end{frame}
}


% display transparently
\setbeamercovered{transparent}


% table style
% This sets the thickness of the borders of the table.
\setlength{\arrayrulewidth}{0.5mm}
% The space between the text and the left/right border of its containing cell
\setlength{\tabcolsep}{18pt}
% The height of each row is set to 1.5 relative to its default height.
\renewcommand{\arraystretch}{2.5}



% define colors
% ---------------------------------------------------------------------------- %
\definecolor{red}{rgb}{0.9,0.30,0.30}
\definecolor{blue}{rgb}{0.32,0.66,0.82}
\definecolor{darkblue}{rgb}{0.2,0.4,0.6}
\definecolor{green}{rgb}{0.47,0.72,0.29}
\definecolor{darkgreen}{rgb}{0.25,0.42,0.21}
\definecolor{yellow}{rgb}{0.95,0.85,0.25}
\definecolor{darkyellow}{rgb}{0.75,0.65,0.05}
\definecolor{orange}{rgb}{0.95,0.55,0.25}
\definecolor{darkorange}{rgb}{0.75,0.35,0.05}
\definecolor{purple}{rgb}{0.75,0.55,0.85}
\definecolor{darkpurple}{rgb}{0.55,0.35,0.65}
\definecolor{brown}{rgb}{0.75,0.55,0.25}
\definecolor{darkbrown}{rgb}{0.55,0.35,0.05}
\definecolor{pink}{rgb}{0.95,0.55,0.75}
\definecolor{darkpink}{rgb}{0.75,0.35,0.55}
\definecolor{grey}{rgb}{0.55,0.55,0.55}
\definecolor{darkgrey}{rgb}{0.35,0.35,0.35}
% ---------------------------------------------------------------------------- %


% set colors
% ---------------------------------------------------------------------------- %
\setbeamercolor{structure}{fg=blue}
\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamercolor{block title alerted}{bg=red, fg=white}
\setbeamercolor{block title example}{bg=green, fg=white}


% define blocks
% ---------------------------------------------------------------------------- %
\addtobeamertemplate{theorem begin}{
    \setbeamercolor{block title}{bg=darkblue, fg=white}
}{}
\addtobeamertemplate{proof begin}{
    \setbeamercolor{block title}{bg=grey, fg=white}
}{}

\newenvironment<>{note}[1]{
    \setbeamercolor{block title}{bg=blue, fg=white}
    \begin{block}{Note}#1}{\end{block}}
\newenvironment<>{warning}[1]{
    \setbeamercolor{block title}{bg=red}
    \begin{block}{Warning}#1}{\end{block}}
\newenvironment<>{important}[1]{
    \setbeamercolor{block title}{bg=orange}
    \begin{block}{Important}#1}{\end{block}}

\newenvironment<>{definition}[1]{
    \setbeamercolor{block title}{bg=grey}
    \begin{block}{Definition}#1}{\end{block}}
\newenvironment<>{proposition}[1]{
    \setbeamercolor{block title}{bg=darkblue}
    \begin{block}{Proposition}#1}{\end{block}}
\newenvironment<>{lemma}[1]{
    \setbeamercolor{block title}{bg=darkblue}
    \begin{block}{Lemma}#1}{\end{block}}
\newenvironment<>{corollary}[1]{
    \setbeamercolor{block title}{bg=darkblue}
    \begin{block}{Corollary}#1}{\end{block}}
\newenvironment<>{remark}[1]{
    \setbeamercolor{block title}{bg=blue}
    \begin{block}{Remark}#1}{\end{block}}
% ---------------------------------------------------------------------------- %
```




## `main.tex`
```latex
\documentclass[dvipdfmx,10pt,aspectratio=169]{beamer}


\input{beamer-preamble.tex}
\input{preamble.tex}


\title{Title}
\subtitle{Subtitle}

\author{Name 1\inst{1} \and Name 2\inst{2}}
\institute[a]{\inst{1} Dept.\ of Physics, The University of \quad \inst{2} Dept.\ of Physics, The University of}

\date{\today}
%\logo{\includegraphics[width=2cm]{icepp-logo.png}}

\begin{document}

\frame{\titlepage}




\begin{frame}{Table of Contents}
    \tableofcontents
\end{frame}




\section{section1}

\begin{frame}{Motivation}
    \begin{itemize}
        \item a
        \item b
    \end{itemize}
\end{frame}




\begin{frame}
    \begin{columns}
        \column{0.5\textwidth}
            This is a first column. This is a first column. This is a first column. This is a first column. This is a first column. This is a first column. This is a first column.
        \column{0.5\textwidth}
            This is a second column. This is a second column. This is a second column. This is a second column. This is a second column. This is a second column.
    \end{columns}
\end{frame}





\section{section2}

\begin{frame}{VQA}
    \begin{center}
        \begin{tikzpicture}
            \node[scale=1.6]{
            \begin{quantikz}
                \lstick{$\ket{0}$} & \gate[3,bundle={2}][3cm]{U(\bth)} & \meter{} \\
                & & \qwbundle[alternate]{}  \\
                \lstick{$\ket{0}$} & \qw & \meter{} \\
            \end{quantikz}};
        \end{tikzpicture}
    \end{center}
\end{frame}





\begin{frame}
    \begin{definition}Barren plateaus\cite{mcclean2018barren}
        $$ \mathbb{E}_{\boldsymbol{\theta}}\left[\frac{\partial C(\boldsymbol{\theta})}{\partial \theta_\nu}\right] = 0, \,\,\mathbb{V}_{\boldsymbol{\theta}}\left[\frac{\partial C(\boldsymbol{\theta})}{\partial \theta_\nu}\right] = \mathcal{O}(e^{-\alpha n}), \,\,\alpha > 0 $$
    \end{definition}
\end{frame}




\begin{frame}
    \begin{theorem}
        $$ a^2 + b^2 = c^2 $$
    \end{theorem}

    \begin{proof}<2>
        asdf asdf asdf.
    \end{proof}

\end{frame}





\begin{frame}
    \begin{warning}
        asdf asdf asdf.
    \end{warning}

    \begin{example}
        asdf asdf asdf.
    \end{example}

    \begin{important}
        asdf asdf asdf.
    \end{important}

    \begin{remark}
        asdf asdf asdf.
    \end{remark}
\end{frame}





\section{section3}

\begin{frame}{Table}
    \begin{table}[]
        \begin{tabular}{|l|c|c|}
        \hline
        a & b & c \\ \hline
        d & e & f \\ \hline
        \end{tabular}
    \end{table}
\end{frame}




\begin{frame}{Reference}
    \scriptsize
    \beamertemplatetextbibitems
    \bibliographystyle{abbrv}
    \bibliography{ref}
\end{frame}




\end{document}
```


## Output
<div style="position: relative; margin: 0 auto; width: 90%; padding-bottom: 111%;">
<iframe style="position: absolute; width: 100%; height: 100%;" src="pdf/beamer.pdf"></iframe>
    <p>
        Your browser does not support PDF files.
        <a href="pdf/beamer.pdf">Download the file instead</a>
    </p>
</div>