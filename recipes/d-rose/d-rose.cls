\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{d-rose}[2026/06/23 v1.0 D Rose Beamer theme — pure white, deep red, arrow bullets]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[compress]{beamer}

% Language, fonts, and typography
\RequirePackage[english]{babel}
\RequirePackage{fontspec}
\usefonttheme{professionalfonts}

\IfFileExists{FiraSans-Regular.otf}{%
  \setsansfont[Ligatures=TeX]{Fira Sans}%
  \setmainfont[Ligatures=TeX]{Fira Sans}%
}{%
  \setsansfont{Latin Modern Sans}%
  \setmainfont{Latin Modern Roman}%
}

% Core packages
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{pifont}
\tcbset{enhanced, sharp corners=south, colback=white, fonttitle=\bfseries}
\usetikzlibrary{arrows.meta,positioning,calc,decorations.pathreplacing}

% ============================================================
% Palette — Deep Red + Pure White + Black
% ============================================================
\definecolor{accent}{HTML}{B91C1C}
\definecolor{accentDark}{HTML}{1A1A1A}
\definecolor{accentLight}{HTML}{DC2626}
\definecolor{accentMuted}{HTML}{555555}
\definecolor{bg}{HTML}{FFFFFF}
\definecolor{textMain}{HTML}{000000}

\definecolor{normalBlockColor}{HTML}{FFF5F5}
\definecolor{normalTitleBlockColor}{HTML}{B91C1C}
\definecolor{normalBlockTextColor}{RGB}{0,0,0}
\definecolor{normalBlockTitleTextColor}{RGB}{255,255,255}

\definecolor{exampleBlockColor}{HTML}{F0F9FF}
\definecolor{exampleTitleBlockColor}{HTML}{1E40AF}
\definecolor{exampleBlockTextColor}{RGB}{0,0,0}
\definecolor{exampleBlockTitleTextColor}{RGB}{255,255,255}

\definecolor{alertBlockColor}{HTML}{FFF7ED}
\definecolor{alertTitleBlockColor}{HTML}{C2410C}
\definecolor{alertBlockTextColor}{RGB}{0,0,0}
\definecolor{alertBlockTitleTextColor}{RGB}{255,255,255}

% Beamer colors
\setbeamercolor*{normal text}{fg=textMain,bg=bg}
\setbeamercolor*{structure}{fg=accent}
\setbeamercolor{titlelike}{fg=textMain,bg=bg}
\setbeamercolor{frametitle}{fg=white,bg=accent}
\setbeamercolor{title}{fg=textMain,bg=bg}
\setbeamercolor*{example text}{fg=accent}
\setbeamercolor*{alerted text}{fg=accentLight}
\setbeamercolor{itemize item}{fg=accent}
\setbeamercolor{enumerate item}{fg=accent!80}
\setbeamercolor{description item}{fg=textMain}

% ============================================================
% Navigation — None
% ============================================================
\setbeamertemplate{navigation symbols}{}

% ============================================================
% Bullet — Arrow Head (Dart)
% ============================================================
\setbeamertemplate{itemize item}{%
  \begin{tikzpicture}[baseline=-0.5ex]
    \fill[accent] (0,0) -- (0.35,0.2) -- (0.35,-0.2) -- cycle;
  \end{tikzpicture}%
}
\setbeamertemplate{itemize subitem}{%
  \begin{tikzpicture}[baseline=-0.5ex]
    \fill[accent] (0,0) -- (0.25,0.15) -- (0.25,-0.15) -- cycle;
  \end{tikzpicture}%
}

\setbeamertemplate{enumerate item}{\makebox[1.2em][l]{\usebeamerfont*{item projected}\color{accent}\textbf{\arabic{enumi}}}.}
\setbeamertemplate{enumerate subitem}{\makebox[1.2em][l]{\usebeamerfont*{subitem projected}\color{accentLight}\textbf{\alph{enumii}}}.}

% ============================================================
% Blocks — tcolorbox based (3 types)
% ============================================================
\setbeamercolor*{block title}{fg=normalBlockTitleTextColor,bg=normalTitleBlockColor}
\setbeamercolor*{block body}{fg=normalBlockTextColor,bg=normalBlockColor}
\setbeamercolor*{block title alerted}{fg=alertBlockTitleTextColor,bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{fg=alertBlockTextColor,bg=alertBlockColor}
\setbeamercolor*{block title example}{fg=exampleBlockTitleTextColor,bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{fg=exampleBlockTextColor,bg=exampleBlockColor}

% Override block templates with tcolorbox
\setbeamertemplate{block begin}{%
  \begin{tcolorbox}[colframe=normalTitleBlockColor,colback=normalBlockColor,coltitle=normalBlockTitleTextColor,colbacktitle=normalTitleBlockColor,title=\textbf{\insertblocktitle}]
}
\setbeamertemplate{block end}{\end{tcolorbox}}

\setbeamertemplate{block alerted begin}{%
  \begin{tcolorbox}[colframe=alertTitleBlockColor,colback=alertBlockColor,coltitle=alertBlockTitleTextColor,colbacktitle=alertTitleBlockColor,title=\textbf{\insertblocktitle}]
}
\setbeamertemplate{block alerted end}{\end{tcolorbox}}

\setbeamertemplate{block example begin}{%
  \begin{tcolorbox}[colframe=exampleTitleBlockColor,colback=exampleBlockColor,coltitle=exampleBlockTitleTextColor,colbacktitle=exampleTitleBlockColor,title=\textbf{\insertblocktitle}]
}
\setbeamertemplate{block example end}{\end{tcolorbox}}

% ============================================================
% Titles
% ============================================================
\setbeamerfont{title}{size=\fontsize{20pt}{32pt}\selectfont}
\setbeamerfont{frametitle}{size=\fontsize{14pt}{22pt}\selectfont}
\setbeamerfont{author}{size=\fontsize{12pt}{32pt}\selectfont}
\setbeamerfont{institute}{size=\fontsize{10pt}{28pt}\selectfont}
\setbeamerfont{block title}{size=\normalsize}
\captionsetup{font=footnotesize,labelfont=bf}

% Title page — left-aligned
\setbeamertemplate{title page}{%
  \begin{tikzpicture}[remember picture, overlay]
    \node[anchor=north west, inner sep=0] at (current page.north west) {
      \begin{beamercolorbox}[wd=\paperwidth, ht=\paperheight, dp=0pt]{title}
        \vspace{3cm}
        \hspace{2cm}
        \begin{minipage}{0.8\paperwidth}
          {\usebeamerfont{title}\color{textMain}\inserttitle\\[0.5cm]}
          {\usebeamerfont{subtitle}\color{accentMuted}\insertsubtitle\\[1cm]}
          {\usebeamerfont{author}\color{textMain}\insertauthor\\[0.3cm]}
          {\usebeamerfont{institute}\color{accentMuted}\insertinstitute\\[0.3cm]}
          {\usebeamerfont{date}\color{accentMuted}\insertdate}
        \end{minipage}
      \end{beamercolorbox}
    };
  \end{tikzpicture}
}

% ============================================================
% Footer — page number only
% ============================================================
\setbeamertemplate{footline}{%
  \leavevmode%
  \hbox{%
    \begin{beamercolorbox}[wd=\paperwidth,ht=2ex,dp=1ex,rightskip=1em]{author in head/foot}%
      \hfill{\usebeamerfont{page number in head/foot}\usebeamercolor[fg]{page number in head/foot}\scriptsize \insertframenumber\,/\,\inserttotalframenumber}
    \end{beamercolorbox}%
  }%
}

\tikzset{
  every node/.style={font=\usebeamerfont{normal text}\selectfont,text=normal text.fg}
}
