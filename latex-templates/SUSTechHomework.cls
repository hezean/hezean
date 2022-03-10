% !TEX TS-program = xelatex
% !TEX encoding = UTF-8
% !Mode:: "TeX:UTF-8"

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SUSTechHomework}[SUSTech Homework]

\LoadClass[a4paper]{article}

\RequirePackage{newpxtext,newpxmath}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{listings}
\RequirePackage{xeCJK}
\RequirePackage[T1]{fontenc}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{booktabs}
\RequirePackage{parskip}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{inconsolata}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\def\sid#1{\gdef\@sid{#1}}
\def\@sid{\@latex@error{No \noexpand\sid given}\@ehc}

\def\coursename#1{\gdef\@coursename{#1}}
\def\@coursename{\@latex@error{No \noexpand\coursename given}\@ehc}

\def\coursecode#1{\gdef\@coursecode{#1}}
\def\@coursecode{\@latex@error{No \noexpand\coursecode given}\@ehc}

\def\univ#1{\gdef\@univ{#1}}
\def\@univ{\@latex@error{No \noexpand\univ given}\@ehc}

\univ{SUSTech}

\geometry{
    left=.85in,
    right=.85in,
    top=1in,
    bottom=.8in,
    bindingoffset=.15in
}

\setlength{\parindent}{0pt}
\renewcommand{\baselinestretch}{1.1}

\newcommand{\mktitle}{
    \noindent\makebox[\linewidth]{
        \begin{minipage}[b]{.7\linewidth}
            {\Large\textsf{\@coursecode~$\cdot$~\@coursename}}\\\\
            {\Huge\textbf\@title}
        \end{minipage}\hfill
        \begin{minipage}[b]{.3\linewidth}
            \large\begin{flushright}
                何泽安 (He Zean)\\
                \vspace{-.2em}
                12011323\\
                \vspace{-.1em}
                \@date
                \vspace{-.2em}
            \end{flushright}
        \end{minipage}
    }
    \noindent\rule{\linewidth}{1.5pt}
    \if@twocolumn\vspace{.5em}\fi
    \thispagestyle{empty}
}

\if@twocolumn
	\renewcommand{\maketitle}{\twocolumn[\mktitle]}
\else
	\renewcommand{\maketitle}{\mktitle}
\fi

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.3pt}

\if@twoside
    \fancyhead[EL,OR]{\thepage~/~\pageref{LastPage}}
    \fancyhead[EC]{\textsc{\@coursename}}
    \fancyhead[ER]{\@title}
    \fancyhead[OL]{\@univ~$\circ$~\@coursecode}
    \fancyhead[OC]{\textsc{He Zean  $\cdot$ 12011323}}
\else
    \lhead{\textsc{He Zean $\cdot$ 12011323}}
    \chead{\textsc{\@coursecode~$\circ$~\@title}}
    \rhead{\thepage~/~\pageref{LastPage}}
\fi

% tex settings moved here %

\usepackage{listings}
\usepackage{blindtext}
\usepackage{listings}
\usepackage{color}
\usepackage{xcolor}
\usepackage{indentfirst}
\usepackage{pifont}
\usepackage {subcaption}
\usepackage{hyperref}
\usepackage{fontspec}
\usepackage{multirow}
\usepackage{longtable}
\usepackage{cite}
\usepackage{subcaption}
\usepackage{multicol}
\usepackage{hyperref}
\usepackage{pgfplots}
\usepackage{tikz}
\usepackage{pgfplots}
\usepackage{pgfplotstable}
\usepackage{algorithm}
\usepackage{multicol}
\usepackage{tikz}
\usepackage{pgfplots}

\usepackage[cache=false]{minted}
\usemintedstyle{emacs}
\setminted{
	frame=lines,
	tabsize=4,
    xleftmargin=10pt,
    linenos,
    baselinestretch=1.3,
    fontsize=\footnotesize
}

\setmonofont[Mapping={}]{Monaco}

\urlstyle{
colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
    pdftitle={Overleaf Example},
    pdfpagemode=FullScreen,}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\newcommand{\toc}{
    \setcounter{page}{1}
    \pagenumbering{Roman}
    \tableofcontents
    \newpage
    \setcounter{page}{1}
    \pagenumbering{arabic}
    \pagestyle{plain}
}

\newcommand{\bibref}[1]{
    \pagebreak
    \bibliographystyle{IEEEtran}
    \bibliography{#1}
    \noindent \scriptsize Disclaimer: All references used in this project are only for the purpose of guiding the direction of exploration and ensuring correctness, any code appearing in the referenced web pages has not been used directly, unless explicitly stated. 
}
