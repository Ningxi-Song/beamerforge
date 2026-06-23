\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{d-rose}[2026/06/23 v1.1 D Rose Beamer theme — black-red with miniframes]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[compress]{beamer}

% Language, fonts, and typography
\RequirePackage[english]{babel}
\RequirePackage{fontspec}
\usefonttheme{professionalfonts}
\usefonttheme{serif}

\IfFileExists{font/Neuton-Regular.ttf}{%
  \setmainfont[
    Path = font/,
    UprightFont = Neuton-Regular.ttf,
    ItalicFont = Neuton-Italic.ttf,
    BoldFont = Neuton-Regular.ttf
  ]{Neuton}%
  \setsansfont[
    Path = font/,
    UprightFont = Neuton-Regular.ttf,
    ItalicFont = Neuton-Italic.ttf,
    BoldFont = Neuton-ExtraBold.ttf
  ]{Neuton}%
}{%
  \setmainfont{Latin Modern Roman}%
  \setsansfont{Latin Modern Sans}%
}

% Core packages commonly useful in research presentations
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{threeparttable}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{nicefrac}
\RequirePackage{pifont}
\usetikzlibrary{arrows.meta,positioning,calc,decorations.pathreplacing}

% Palette
\definecolor{redblack}{RGB}{186,84,68}
\definecolor{titleColor}{RGB}{255,255,255}
\definecolor{titleTextColor}{RGB}{1,49,78}
\definecolor{bodyColor}{RGB}{255,255,255}
\definecolor{normalTextColor}{RGB}{0,0,0}
\definecolor{alertTextColor}{RGB}{200,84,68}

\definecolor{normalBlockColor}{RGB}{249,189,187}
\definecolor{normalTitleBlockColor}{RGB}{60,60,60}
\definecolor{normalBlockTextColor}{RGB}{0,0,0}
\definecolor{normalBlockTitleTextColor}{RGB}{255,255,255}

\definecolor{alertBlockColor}{RGB}{249,189,187}
\definecolor{alertTitleBlockColor}{RGB}{204,45,24}
\definecolor{alertBlockTextColor}{RGB}{0,0,0}
\definecolor{alertBlockTitleTextColor}{RGB}{255,255,255}

% Beamer colors and navigation
\setbeamercolor*{normal text}{fg=normalTextColor,bg=bodyColor}
\setbeamercolor*{structure}{fg=redblack}
\setbeamercolor{titlelike}{fg=redblack,bg=titleColor}
\setbeamercolor{frametitle}{fg=redblack,bg=bodyColor}
\setbeamercolor{title}{fg=redblack,bg=titleColor}
\setbeamercolor*{example text}{fg=redblack}
\setbeamercolor*{alerted text}{fg=alertTextColor}
\setbeamercolor{itemize item}{fg=redblack}
\setbeamercolor{enumerate item}{fg=redblack!70}
\setbeamercolor{description item}{fg=titleTextColor!70}
\setbeamercolor{section in head/foot}{bg=white, fg=redblack}
\setbeamercolor{subsection in head/foot}{bg=white, fg=redblack}

\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}
\makeatletter
\beamer@compressfalse
\makeatother

% Lists
\setbeamertemplate{itemize item}{\ding{220}}
\setbeamertemplate{itemize subitem}{\ding{216}}
\setbeamertemplate{enumerate item}{\makebox[0.5em][l]{\textbf{\arabic{enumi})}}}
\setbeamertemplate{enumerate subitem}{\makebox[1em][r]{\raisebox{0.2ex}{\textbf{\alph{enumii})}}}}

% Blocks
\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamercolor*{block title}{fg=normalBlockTitleTextColor,bg=normalTitleBlockColor}
\setbeamercolor*{block body}{fg=normalBlockTextColor,bg=normalBlockColor}
\setbeamercolor*{block title alerted}{fg=alertBlockTitleTextColor,bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{fg=alertBlockTextColor,bg=alertBlockColor}

% Titles
\setbeamerfont{title like}{shape=\scshape}
\setbeamerfont{frametitle}{shape=\scshape}
\setbeamerfont{title}{size=\fontsize{20pt}{32pt}\selectfont}
\setbeamerfont{subtitle}{size=\fontsize{12pt}{22pt}\selectfont}
\setbeamerfont{author}{size=\fontsize{12pt}{32pt}\selectfont}
\setbeamerfont{institute}{size=\fontsize{12pt}{32pt}\selectfont}
\setbeamerfont{date}{size=\fontsize{10pt}{28pt}\selectfont}
\setbeamerfont{block title}{size=\normalsize}
\setbeamercolor{subtitle}{fg=titleTextColor}
\setbeamercolor{author}{fg=normalTextColor}
\setbeamercolor{institute}{fg=titleTextColor}
\setbeamercolor{date}{fg=titleTextColor}
\captionsetup{font=footnotesize,labelfont=bf}

\tikzset{
  every node/.style={font=\usebeamerfont{normal text}\selectfont,text=normal text.fg}
}

% Footer
\setbeamertemplate{footline}{%
  \leavevmode%
  \hbox{%
    \begin{beamercolorbox}[wd=\paperwidth,ht=2ex,dp=1ex,rightskip=1em]{author in head/foot}%
      \hfill{\itshape\scriptsize \insertframenumber\,/\,\inserttotalframenumber}
    \end{beamercolorbox}%
  }%
}




