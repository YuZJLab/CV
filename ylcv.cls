%% Copyright (C) 2020 YU Zhejian <Zhejian.19@intl.zju.edu.cn>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PREPARATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ylcv}[2020-08-04 v1.2 YLCV]
\RequirePackage{times}
\RequirePackage{url}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TITLE PAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\@title=\relax
\let\title=\relax
\newcommand{\@NAME}{}
\newcommand{\NAME}[1]{\renewcommand{\@NAME}{#1}}
\newcommand{\@EMAIL}{}
\newcommand{\EMAIL}[1]{\renewcommand{\@EMAIL}{#1}}
\newcommand{\@TEL}{}
\newcommand{\TEL}[1]{\renewcommand{\@TEL}{#1}}
\renewcommand{\maketitle}{\thispagestyle{empty}\vspace*{-1in}\begin{center}\Huge\textrm{\@NAME{}}\\\vspace*{0.2em}
\large\textrm{\@EMAIL}\space\textbar\space\@TEL\end{center}\vspace*{-0.5em}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% MARGIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[left=0.5in,right=0.5in,top=1in,bottom=1in,headheight=11pt,letterpaper]{geometry}
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=5pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=5pt}
\setlength\parindent{0em}
\renewcommand\labelitemi{$\cdot$}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SECTIONING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[explicit]{titlesec}
\titleformat{\section}[block]{\large\scshape}{}{0em}{\raggedright #1}[\titlerule\vspace*{-0.5em}]
\let\subsection=\relax \let\subsubsection=\relax \let\paragraph=\relax \let\subparagraph=\relax
\setcounter{secnumdepth}{0}

\newcommand\subsection{\@subsection}
\def\@subsection[#1]#2{\textbf{#2}\hfill #1\par}


\endinput
