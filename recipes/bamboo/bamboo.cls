%%%%%%%%%%%% define the basic settings
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bamboo}[2026/06/24 reusable academic Beamer recipe]
\LoadClass[compress,10pt]{beamer}

%%%%%%%%%%%% define the fonts
\usepackage[english]{babel}
\usepackage[utf8]{inputenc}
\usepackage{palatino}
\usepackage[T1]{fontenc}
\usepackage{pdfpages}
\usepackage{graphicx}
\usepackage[footnotesize,hang]{caption}
\usepackage{hyperref}
\usepackage{amsfonts,amsmath,amssymb}
\usepackage[none]{hyphenat}
\usepackage{booktabs}
\usepackage{threeparttable}
\usepackage{url}
\usepackage{nicefrac}
\usepackage{microtype}
\usepackage{etoolbox}

%%%%%%%%%%%% use tikz
\usepackage{tikz}
\usetikzlibrary{arrows.meta,positioning,calc}
\usefonttheme{serif}
\tikzset{
  every node/.style={
    font=\usebeamerfont{normal text}\selectfont,
    text=normal text.fg
  }
}

%%%%%%%%%%%% tables
\usepackage{tcolorbox}
\usepackage{tabularx}
\usepackage{array}
\usepackage{colortbl}

%%%%%%%%%%%% colors: original template palette
\definecolor{myblue}{RGB}{69,105,144}
\definecolor{titleColor}{RGB}{255,255,255}
\definecolor{titleTextColor}{RGB}{1,49,78}
\definecolor{bodyColor}{RGB}{255,255,255}
\definecolor{normalTextColor}{RGB}{0,0,0}
\definecolor{alertTextColor}{RGB}{87,195,194}

\definecolor{normalBlockColor}{RGB}{178,213,219}
\definecolor{normalTitleBlockColor}{RGB}{12,91,122}
\definecolor{normalBlockTextColor}{RGB}{0,0,0}
\definecolor{normalBlockTitleTextColor}{RGB}{255,255,255}

\definecolor{exampleBlockColor}{RGB}{192,223,248}
\definecolor{exampleTitleBlockColor}{RGB}{71,137,190}
\definecolor{exampleBlockTextColor}{RGB}{0,0,0}
\definecolor{exampleBlockTitleTextColor}{RGB}{255,255,255}

\definecolor{alertBlockColor}{RGB}{249,189,187}
\definecolor{alertTitleBlockColor}{RGB}{204,45,24}
\definecolor{alertBlockTextColor}{RGB}{0,0,0}
\definecolor{alertBlockTitleTextColor}{RGB}{255,255,255}

%%%%%%%%%%%% base colors
\setbeamercolor*{structure}{fg=myblue}
\setbeamercolor{titlelike}{fg=myblue,bg=titleColor}
\setbeamercolor*{normal text}{fg=normalTextColor,bg=bodyColor}
\setbeamercolor*{example text}{fg=myblue}
\setbeamercolor*{alerted text}{fg=alertTextColor}
\setbeamercolor{itemize item}{fg=myblue}
\setbeamercolor{enumerate item}{fg=myblue!70}
\setbeamercolor{description item}{fg=titleTextColor!70}
\setbeamercolor{section in head/foot}{bg=white, fg=myblue}
\setbeamercolor{subsection in head/foot}{bg=white, fg=myblue}

%%%%%%%%%%%% itemize
\usepackage{pifont}
\setbeamertemplate{itemize item}{\ding{109}}
\setbeamertemplate{itemize subitem}{\ding{119}}
\setbeamertemplate{enumerate item}{%
  \makebox[0.5em][l]{\textbf{\arabic{enumi})}}
}
\setbeamertemplate{enumerate subitem}{%
  \makebox[1em][r]{\raisebox{0.2ex}{\textbf{\alph{enumii})}}}
}

%%%%%%%%%%%% upper line and navigation
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{frametitle continuation}{}
\makeatletter
  \beamer@compressfalse
\makeatother

%%%%%%%%%%%% blocks
\setbeamertemplate{blocks}[rounded][shadow=False]
\setbeamercolor*{block title}{fg=normalBlockTitleTextColor,bg=normalTitleBlockColor}
\setbeamercolor*{block body}{fg=normalBlockTextColor,bg=normalBlockColor}
\setbeamercolor*{block title alerted}{fg=alertBlockTitleTextColor,bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{fg=alertBlockTextColor,bg=alertBlockColor}
\setbeamercolor*{block title example}{fg=exampleBlockTitleTextColor,bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{fg=exampleBlockTextColor,bg=exampleBlockColor}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=exampleTitleBlockColor!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=alertTitleBlockColor!70}
}
\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=normalTitleBlockColor!70}
}

%%%%%%%%%%%% title page
\makeatletter
\newif\ifbamboo@titleimage
\bamboo@titleimagefalse
\newcommand{\titleimage}[1]{\gdef\bamboo@titleimagepath{#1}\bamboo@titleimagetrue}
\gdef\bamboo@titleimagepath{}

\setbeamerfont{title like}{shape=\scshape}
\setbeamerfont{frametitle}{shape=\scshape}
\setbeamerfont{title}{size=\fontsize{18pt}{32pt}\selectfont}
\setbeamerfont{subtitle}{size=\fontsize{10pt}{16pt}\selectfont}
\setbeamerfont{author}{size=\fontsize{10pt}{22pt}\selectfont}
\setbeamerfont{institute}{size=\fontsize{10pt}{22pt}\selectfont}
\setbeamerfont{date}{size=\fontsize{9pt}{18pt}\selectfont}

\setbeamertemplate{title page}{%
  \begin{tikzpicture}[remember picture,overlay]
    \fill[bodyColor] (current page.south west) rectangle (current page.north east);
    \ifbamboo@titleimage
      \node[anchor=east,inner sep=0pt,opacity=0.9] at (current page.east) {\includegraphics[height=\paperheight]{\bamboo@titleimagepath}};
      \fill[white,opacity=0.86] (current page.south west) rectangle ([xshift=-0.34\paperwidth]current page.north east);
      \draw[myblue!45,line width=0.45pt] ([xshift=0.09\paperwidth,yshift=-0.15\paperheight]current page.north west) -- ([xshift=0.09\paperwidth,yshift=0.18\paperheight]current page.south west);
    \fi
  \end{tikzpicture}%
  \vspace*{0.2\paperheight}
  \begin{minipage}{0.58\paperwidth}
    {\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle\par}
    \vspace{0.35cm}
    {\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par}
    \vspace{0.55cm}
    {\usebeamerfont{author}\insertauthor\par}
    {\usebeamerfont{institute}\insertinstitute\par}
    \vspace{0.18cm}
    {\usebeamerfont{date}\insertdate\par}
  \end{minipage}
}
\makeatother

%%%%%%%%%%%% footnote frame number
\setbeamertemplate{footline}{%
  \leavevmode%
  \hbox{%
    \begin{beamercolorbox}[
      wd=\paperwidth,
      ht=2ex,
      dp=1ex,
      rightskip=1em
    ]{author in head/foot}%
      \hfill
      {\itshape\scriptsize \insertframenumber\,/\,\inserttotalframenumber}
    \end{beamercolorbox}%
  }%
}

%%%%%%%%%%%% figures
\usepackage{subfigure}

%%%%%%%%%%%% biblatex
\usepackage[backend=biber, style=apa]{biblatex}
\bibliography{references}
\setbeamertemplate{bibliography item}{}
\setlength{\bibitemsep}{0.3em}
\setlength{\bibhang}{1.2em}
\renewcommand*{\bibfont}{\footnotesize}