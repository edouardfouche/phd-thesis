%% Vorlage für Dissertation in A4 mit ansprechendem Layout
%% basierend auf der Abschlussarbeitsvorlage
%%
%% Dr.-Ing. Erik Burger
%% burger@kit.edu
%%
%% Siehe https://sdqweb.ipd.kit.edu/wiki/Dokumentvorlagen
%%
%% {$HeadURL: https://svnserver.informatik.kit.edu/i43/svn/presentations/SDQ-Dissertations-Vorlage/LaTeX-Dateien/sdqdiss-a4.cls $}
%% {$LastChangedDate: 2018-08-02 14:23:11 +0200 (Thu, 02 Aug 2018) $}
%% {$LastChangedRevision: 1078 $}
%% {$LastChangedBy: burger $}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sdqdiss-a4}[2016/07/16 SDQ Dissertation DIN A4]

\LoadClass[
	a4paper,
	fontsize=12pt,
	headsepline,
]{scrbook}

% Optionen an scrbook durchreichen
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax

%% ----------------
%% | Seitenformat |
%% ----------------

\typearea[20mm]{15}

%% ---------
%% | Fonts |
%% ---------

% Microtype für schöneren Textsatz
\RequirePackage[protrusion=true,expansion=true]{microtype}

% serif type: Linux Libertine
\RequirePackage{libertine}
% Linux Libertine in math mode
\RequirePackage[libertine]{newtxmath}

% grotesque type: Adobe Source Sans Pro
%\RequirePackage[scaled=.92]{sourcesanspro}
\setkomafont{disposition}{\bfseries} %so that everything is serif

% monospace type: Bera Mono
\RequirePackage[scaled=.78]{beramono}

% semi-bold type (for subsections and paragraphs)
\newcommand*{\sbdefault}{sb}
\DeclareRobustCommand{\sbseries}{%
  \not@math@alphabet\sbseries\relax
  \fontseries\sbdefault\selectfont}

\DeclareTextFontCommand{\textsb}{\sbseries}

\addtokomafont{subsection}{\sbseries}
\addtokomafont{subsubsection}{\sbseries}
\addtokomafont{paragraph}{\sbseries}

%% --------------
%% | Titelseite |
%% --------------

% Logos
%\newcommand{\thegrouplogo}{sdqlogo}
%\newcommand{\grouplogo}[1]{\renewcommand{\thegrouplogo}{#1}}
%\newcommand{\printgrouplogo}{\includegraphics[height=1.8cm]{logos/\thegrouplogo}}
%\newcommand{\nogrouplogo}{\renewcommand{\printgrouplogo}{}}

\titlehead{%
% KIT logo german/english
\iflanguage{ngerman}
{\includegraphics[height=1.8cm]{logos/kitlogo_de_cmyk}}
{\includegraphics[height=1.8cm]{logos/kitlogo_en_cmyk}}
\hfill
% SDQ logo
%\printgrouplogo
%\ThisCenterWallPaper{1}{logos/title-background.pdf}
}
		
%
\setkomafont{title}{\huge\bfseries} % \sffamily (make so that the title has serif)
\setkomafont{subtitle}{\normalfont\large}

%\uppertitleback{Karlsruher Institut f{\"u}r Technologie\\ Fakult{\"a}t f{\"u}r Informatik\\ Postfach 6980\\ 76128 Karlsruhe}

%% ------------
%% | Struktur |
%% ------------

% Hurenkinder und Schusterjungen verhindern
\clubpenalty10000
\widowpenalty10000
\displaywidowpenalty10000
% Fußnoten über mehrere Seiten verhindern
\interfootnotelinepenalty10000

%Fußnotentext bündig
\deffootnote[1em]{1em}{0em}{%
  \makebox[1em][l]{% linksbündig in dem angegebenen Markenbreich
    \textsuperscript{\thefootnotemark}}%
}

% Numerierte Subsubsections
\setcounter{secnumdepth}{3}

%% ----------
%% | Pakete |
%% ----------

% KIT-Rahmen für Titelseite
\RequirePackage{wallpaper}

%% Formatierung der Inhalts-/Abbildungs-Verzeichnisse
%\RequirePackage{tocstyle}
%\usetocstyle{allwithdot}
%\settocstylefeature[-1]{pagenumberhook}{\normalsize\normalfont}
%\settocstylefeature[-1]{dothook}{\normalsize\normalfont}