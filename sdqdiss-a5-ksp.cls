%% Vorlage für DIN A5-Monographien
%% nach den Vorgaben des KIT Scientific Publishing
%%
%% Dr.-Ing. Erik Burger
%% burger@kit.edu
%%
%% Siehe https://sdqweb.ipd.kit.edu/wiki/Dokumentvorlagen
%%
%% {$HeadURL: https://svnserver.informatik.kit.edu/i43/svn/presentations/SDQ-Dissertations-Vorlage/LaTeX-Dateien/sdqdiss-a5-ksp.cls $}
%% {$LastChangedDate: 2019-03-28 18:27:01 +0100 (Thu, 28 Mar 2019) $}
%% {$LastChangedRevision: 1148 $}
%% {$LastChangedBy: burger $}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sdqdiss-a5-ksp}[2018/07/05 SDQ Dissertation KSP Monography DIN A5]
\LoadClass{scrbook}

% Satzspiegel und Bindekorrektur
% 
% Die folgenden Werte für die Bindekorrektur (BCOR) werden je nach
% Gesamtseitenzahl des Dokuments verwendet:
% 
% +------------+----------------+
% | Seitenzahl | Bindekorrektur |
% +------------+----------------+
% | < 200      | 11mm           | 
% | 200–399    | 14mm           | 
% | > 400      | 16mm           | 
% +------------+----------------+
%
% Seitenteilung (DIV) ist immer 15

\DeclareOption{smalldiss}{
	\typearea[13mm]{15} 
}
\DeclareOption{mediumdiss}{
	\typearea[14mm]{15} 
}
\DeclareOption{largediss}{
	\typearea[16mm]{15} 
}

\raggedbottom

% Standard
\ExecuteOptions{mediumdiss}

% Optionen an scrbook durchreichen
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}

\ProcessOptions\relax

\KOMAoptions{
	paper=a5, %change to a5
	pagesize,
	headlines=1.1, 
	fontsize=10pt, 
	parskip=half,
	headsepline,
	headinclude=true,
	open=right,
	footinclude=false,
	bibliography=totoc,	
	listof=totoc,
}

\recalctypearea

% Titelseite
%\setkomafont{title}{\normalfont\bfseries}
\setkomafont{subtitle}{\normalfont\large}

%\setkomafont{section}{\normalfont\bfseries}

% Schrifttypen

% serif type: Linux Libertine
\RequirePackage{libertine}
% Linux Libertine in math mode
\RequirePackage[libertine]{newtxmath}

% grotesque type: Adobe Source Sans Pro
%\RequirePackage[scaled=.92]{sourcesanspro}

% monospace type: Bera Mono
\RequirePackage[scaled=.78]{beramono}

% Microtype für schöneren Textsatz
\RequirePackage[protrusion=true,expansion=true]{microtype}

% keine Seitenzahl auf Kapiteltrennblättern
\renewcommand*{\partpagestyle}{empty}

% Numerierte Subsubsections
\setcounter{secnumdepth}{3}

% Größe der Titelzeile 
%\setkomafont{pageheadfoot}{\footnotesize\usekomafont{pagenumber}}
%\setkomafont{pagefoot}{\small}

%% Einzug der Überschriften einheitlich (Vorgabe KSP)

\newlength{\headingindent}
\setlength{\headingindent}{36pt}
\renewcommand*{\chapterformat}{%
  \makebox[\headingindent][l]{\thechapter\autodot}%
}
\renewcommand*{\sectionformat}{%
  \makebox[\headingindent][l]{\thesection\autodot}%
}
\renewcommand*{\subsectionformat}{%
 \makebox[\headingindent][l]{\thesubsection\autodot}%
} 
\renewcommand*{\subsubsectionformat}{%
 \makebox[\headingindent][l]{\thesubsubsection\autodot}%
} 

%% /Einzug Überschriften

% Beschriftungen von Schaubildern
%\setkomafont{caption}{\small} 							% kleiner als Fließtext
%\setkomafont{captionlabel}{\sffamily\bfseries\small} 	% seriflos fett, kleiner als Fließtext
%\setcapindent{0em}                             			% keinen Einzug ab der 2. Zeile

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

%% Flattersatz in Aufzählungen
\usepackage{enumitem}
\setlist[itemize]{before=\csname par\endcsname\raggedright,partopsep=0pt}
\setlist[enumerate]{before=\csname par\endcsname\raggedright,partopsep=0pt}


%%
%% Vollere Seiten erlauben
%%

\renewcommand{\topfraction}{0.9}	% max fraction of floats at top
\renewcommand{\bottomfraction}{0.8}	% max fraction of floats at bottom
\renewcommand{\textfraction}{0.07}	% allow minimal text w. figs
%   Parameters for FLOAT pages (not text pages):
\renewcommand{\floatpagefraction}{0.85}	% require fuller float pages
% N.B.: floatpagefraction MUST be less than topfraction !!
\renewcommand{\dblfloatpagefraction}{0.85}	% require fuller float pages

% Formatierung der Inhalts-/Abbildungs-Verzeichnisse
%\RequirePackage{tocstyle}
%\usetocstyle{allwithdot}
%\settocstylefeature[-1]{pagenumberhook}{\normalsize\normalfont}
%\settocstylefeature[-1]{dothook}{\normalsize\normalfont}
%\settocstylefeature{pagenumberbox}{\hbox}
% Verzeichnisse Figure/Table/Listing ohne linken Rand
\renewcommand\l@figure{\@dottedtocline{1}{0em}{1.5em}}
\renewcommand\l@table{\@dottedtocline{1}{0em}{1.5em}}

% Formatierung der Seitenzahl im Inhaltsverzeichnis
\renewcommand*\@pnumwidth{2em}
\renewcommand*\@tocrmarg{7em}
% Gleiche Größe und Ausrichtung von Part und Chapter
\setkomafont{partentry}{\usekomafont{chapterentry}}
\RedeclareSectionCommand[tocnumwidth=1.5em]{part}