\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SUSTechBeamer}[SUSTech Beamer]

\LoadClass{beamer}

\batchmode

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
\usepackage{xeCJK}
\usepackage{amsmath,amssymb,enumerate,epsfig,bbm,calc,color,ifthen,capt-of,multimedia,hyperref}

\DefineNamedColor{named}{sustechdarkblue}    {rgb}{0.13,0.28,0.53}
\DefineNamedColor{named}{sustechgreen}    {rgb}{0.08,0.65,0.6}
\DefineNamedColor{named}{sustechblue}    {rgb}{0.0,0.39,0.62}
\DefineNamedColor{named}{sustechpaleblue}    {rgb}{0,0.56,0.83}
\DefineNamedColor{named}{sustechgold}   {rgb}{0.87,0.7,0.36}
\DefineNamedColor{named}{darkgreen}   {rgb}{0,0.16,0.14}

\mode<presentation>
\setbeamercolor{alerted text}{fg=green!80!yellow}
\setbeamercolor*{palette primary}{bg=sustechdarkblue,fg=white}
\setbeamercolor*{palette secondary}{fg=white,bg=sustechpaleblue}
\setbeamercolor*{palette tertiary}{fg=white,bg=sustechblue}
\setbeamercolor*{palette quaternary}{fg=white,bg=yellow}
\setbeamercolor*{structure}{fg=sustechdarkblue,bg=white}
\setbeamercolor{frametitle}{bg=sustechdarkblue,fg=white}
\mode<all>

\usetheme{Madrid}

\def\authorfootage#1{\gdef\@authorfootage{#1}}
\def\titlefootage#1{\gdef\@titlefootage{#1}}

\makeatletter
\setbeamertemplate{footline}{
  \leavevmode%
  \hbox{%
  \begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\@authorfootage
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.4\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
    \usebeamerfont{title in head/foot}\@titlefootage
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
    \usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
    \insertframenumber{} / \inserttotalframenumber\hspace*{2ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
}
\makeatother

\pgfdeclareimage[height=0.7cm]{sustech-logo}{sustech-logo.pdf}
\logo{\pgfuseimage{sustech-logo}\hspace*{0.3cm}}

\AtBeginSection[]
{
  \begin{frame}<beamer>
    \frametitle{Outline}
    \tableofcontents[currentsection,subsectionstyle=show/show,hideothersubsections]
    % \tableofcontents[currentsection,subsectionstyle=show/show/shaded]
  \end{frame}
}
\beamerdefaultoverlayspecification{<+->}

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
\usepackage{cite}

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

\lstset{
  basicstyle=\footnotesize\ttfamily, % the size of the fonts that are used for the code
  numbers=left,                   % where to put the line-numbers
  numberstyle=\tiny\color{gray},  % the style that is used for the line-numbers
  stepnumber=1,                   % the step between two line-numbers. If it's 1, each line 
                                  % will be numbered
  numbersep=15pt,                  % how far the line-numbers are from the code
  framexleftmargin=5pt,
  framexrightmargin=5pt,
  backgroundcolor=\color[RGB]{245,245,244},   %代码背景色
  showspaces=false,               % show spaces adding particular underscores
  showstringspaces=false,         % underline spaces within strings
  showtabs=false,                 % show tabs within strings adding particular underscores
  frame=single,                   % adds a frame around the code
  rulecolor=\color{black},        % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. commens (green here))
  tabsize=4,                      % sets default tabsize to 2 spaces
  captionpos=b,                   % sets the caption-position to bottom
  breaklines=true,                % sets automatic line breaking
  breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
  title=\lstname,                 % show the filename of files included with \lstinputlisting;
                                  % also try caption instead of title
  keywordstyle=\color{blue},      % keyword style
  commentstyle=\color{dkgreen},   % comment style
  stringstyle=\color{mauve},      % string literal style
  escapeinside={\%*}{*)},         % if you want to add LaTeX within your code
  morekeywords={*,alignas,continute,friend,register,true,alignof,decltype,goto,
    reinterpret_cast,try,asm,defult,if,return,typedef,auto,delete,inline,short,
    typeid,bool,do,int,signed,typename,break,double,long,sizeof,union,case,
    dynamic_cast,mutable,static,unsigned,catch,else,namespace,static_assert,using,
    char,enum,new,static_cast,virtual,char16_t,char32_t,explict,noexcept,struct,
    void,export,nullptr,switch,volatile,class,extern,operator,template,wchar_t,
    const,false,private,this,while,constexpr,float,protected,thread_local,
    const_cast,for,public,throw,std},
    emph={map,set,multimap,multiset,unordered_map,unordered_set,
    unordered_multiset,unordered_multimap,vector,string,list,deque,
    array,stack,forwared_list,iostream,memory,shared_ptr,unique_ptr,
    random,bitset,ostream,istream,cout,cin,endl,move,default_random_engine,
    uniform_int_distribution,iterator,algorithm,functional,bing,numeric,}
}
