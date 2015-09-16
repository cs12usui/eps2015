%% -------------------------------------------------------------------
%% Documentclass  EPS.cls
%%   for Earth, Planets and Space by Springer
%%
%% based on article.cls and jgg.sty
%%
%% Copyright (C) 2004 by The LaTeX3 Project
%% -------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{EPS}
    [2014/03/17 v0.1 EPS LaTeX2e document class]
%% -- -- -- article.cls -- -- -- %%
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{draft}
  {\renewcommand\@ptsize{2}\onecolumn\renewcommand\baselinestretch{1}}%
\DeclareOption{submit}
  {\renewcommand\@ptsize{2}\onecolumn\renewcommand\baselinestretch{2}}%
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{a4paper,number,12pt,oneside,onecolumn,submit}
\ProcessOptions
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
%+--------------+
%|  Page Style  |
%+--------------+
\setlength\headheight{10pt}
\setlength\headsep{12pt}
\setlength\footskip{24pt}
\setlength\textheight{250mm}
\setlength\textwidth{160mm}
\setlength\oddsidemargin{0mm}
\setlength\evensidemargin{0mm}
\setlength\topmargin{-8mm}

\setcounter{topnumber}{5}
\renewcommand\topfraction{.95}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.95}
\setcounter{totalnumber}{10}
\renewcommand\textfraction{.02}
\renewcommand\floatpagefraction{.01}
\setcounter{dbltopnumber}{9}
\renewcommand\dbltopfraction{.95}
\renewcommand\dblfloatpagefraction{.01}

\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}

%+----------------+
%|  Paragraphing  |
%+----------------+
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\parskip 0pt 
\parindent 0em 
\topsep 0pt plus 1pt % 0em <== 1em
\partopsep 0pt plus 1pt 
\itemsep 0pt plus 1pt
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

%+---------+
%|  Fonts  |
%+---------+

\@options

\renewcommand\normalsize{\@setsize\normalsize{12pt}\xpt\@xpt
  \abovedisplayskip 10pt plus 2pt minus 5pt
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \z@ plus 3pt
  \belowdisplayshortskip 6pt plus 3pt minus 3pt
  \let\@listi\@listI}
\renewcommand\small{\@setsize\small{11pt}\ixpt\@ixpt
  \abovedisplayskip 8.5pt plus 3pt minus 4pt
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \z@ plus 2pt
  \belowdisplayshortskip 4pt plus 2pt minus 2pt
  \let\@listi\@listI}
\renewcommand\footnotesize{\@setsize\footnotesize{9.5pt}\viiipt\@viiipt
  \abovedisplayskip 6pt plus 2pt minus 4pt
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \z@ plus 1pt
  \belowdisplayshortskip 3pt plus 1pt minus 2pt
  \let\@listi\@listI}
\renewcommand\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
\renewcommand\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
\renewcommand\large{\@setsize\large{14pt}\xiipt\@xiipt}
\renewcommand\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
\renewcommand\LARGE{\@setsize\LARGE{22pt}\xviipt\@xviipt}
\renewcommand\huge{\@setsize\huge{25pt}\xxpt\@xxpt}
\renewcommand\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand{\mathbold}[1]{\mbox{\boldmath $\bf#1$}}

%+---------+
%|  Lists  |
%+---------+
\leftmargini   24pt
\leftmarginii  22pt
\leftmarginiii 18pt
\leftmarginiv  16pt
\leftmarginv   10pt
\leftmarginvi  10pt
\leftmargin\leftmargini
\labelsep 0pt	% 0pt <== 5pt
\labelwidth\leftmargini\advance\labelwidth-\labelsep

%% -- -- -- jgg.sty -- -- -- %%
\def\@listI{\leftmargin\leftmargini
    \parsep 0pt
    \topsep 0pt plus 1pt minus 1pt
    \itemsep 0pt % <-- 8pt
    \partopsep 0pt}
\def\@listii{\leftmargin\leftmarginii
    \labelwidth\leftmarginii\advance\labelwidth-\labelsep
    \parsep 0pt
    \topsep 0pt plus 1pt minus 1pt
    \itemsep 0pt % <-- 8pt
    \partopsep 0pt}
\def\@listiii{\leftmargin\leftmarginiii
    \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
    \parsep 0pt
    \topsep 0pt
    \itemsep 0pt
    \partopsep 0pt}
\def\@listiv{\leftmargin\leftmarginiv
    \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}
\def\@listv{\leftmargin\leftmarginv
    \labelwidth\leftmarginv\advance\labelwidth-\labelsep}
\def\@listvi{\leftmargin\leftmarginvi
    \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}

\let\@listi\@listI
\@listI

\normalsize

%+----------------------+
%|  Title and Abstract  |
%+----------------------+
\def\@author{}
\def\@title{}

\long\def\abstract#1{\long\def\@abstract{%
     \flushleft
     \textbf{Abstract}\par
     \normalsize #1\par}
}

\def\keywords#1{\def\@keywords{{\bf Keywords\\ \noindent}#1}}
\def\keywordsname{\bf Key word: }

\def\maketitle{\par
  \setcounter{footnote}{0}
  \begingroup
    \def\thefootnote{\fnsymbol{footnote}}
    \newpage
    \global\@topnum\z@    % Prevents figures from going at top of page.
    \@maketitle
    \thispagestyle{plain}\@thanks
  \endgroup
  \let\maketitle\relax
  \let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax
}

\def\@maketitle{\newpage
  \null
  \vskip   2em               % Vertical space above title.
  \noindent
  {\Large\bf \@title \par}
  \vskip 16pt               % Vertical space after title.
  \noindent
  {\normalsize              % this was \small
   \lineskip .8em
   \begin{tabular}[t]{p{14cm}}
     \@author
   \end{tabular}\par}
   \vskip 6pt              % Vertical space after author.
   \vfill \hfill Preprint submitted to
                 \textit{Earth, Planets and Space} on \today
  \newpage
  \begin{list}{}
    {\leftmargin=0mm
     \topsep=0pt 
     \partopsep=0pt 
     \listparindent=1em 
     \parsep=0pt 
     \itemsep=0pt
     \itemindent=0em        % 1em
     \setlength{\rightmargin}{\leftmargin}}
    \item {\@abstract}
    \vskip 1em
    \item {\@keywords}
  \end{list}\par
  \vskip -1mm
  \raggedright
  \vspace{2\baselineskip}
}

\setcounter{footnote}{0}

%+-------------------+
%|  Section Counter  |
%+-------------------+
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart         {\@Roman\c@part}
\renewcommand\thesection      {}
%\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsection   {}
%\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\thesubsubsection{}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{\par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

%+---------+
%|  Parts  |
%+---------+
% \def\@part[#1]#2{%
%     \ifnum \c@secnumdepth >\m@ne
%       \refstepcounter{part}%
%       \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
%     \else
%       \addcontentsline{toc}{part}{#1}%
%     \fi
%     {\parindent \z@ \raggedright
%      \interlinepenalty \@M
%      \normalfont
%      \ifnum \c@secnumdepth >\m@ne
%        \Large\bfseries \partname~\thepart
%        \par\nobreak
%      \fi
%      \huge \bfseries #2%
%      \markboth{}{}\par}%
%     \nobreak
%     \vskip 3ex
%     \@afterheading}
% \def\@spart#1{%
%     {\parindent \z@ \raggedright
%      \interlinepenalty \@M
%      \normalfont
%      \huge \bfseries #1\par}%
%      \nobreak
%      \vskip 3ex
%      \@afterheading}

%+------------+
%|  Sections  |
%+------------+
%% \@startsection {Name}{Level}{Indent}{Beforeskip}{Afterskip}{Style}
\newcommand\section{\@startsection {section}{10}{\z@}%
                           {\baselineskip}
                           {.002pt}%
                           {\normalfont\normalsize\bfseries}}
\newcommand\subsection{\@startsection{subsection}{10}{0.5em}%
                              {\z@}%
                              {.001pt}%
                              {\normalfont\normalsize\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{10}{1em}%
                                 {\z@}%
                                 {-1em}%
                                 {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                             {3.25ex \@plus1ex \@minus.2ex}%
                             {-1em}%
                             {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                {3.25ex \@plus1ex \@minus .2ex}%
                                {-1em}%
                                {\normalfont\normalsize\bfseries}}
%% -- -- -- article.cls -- -- -- %%
\setlength \leftmargini   {2em}
\leftmargin  \leftmargini
\setlength \leftmarginii  {2.2em}
\setlength \leftmarginiii {1.87em}
\setlength \leftmarginiv  {1.7em}
\setlength \leftmarginv   {1em}
\setlength \leftmarginvi  {1em}
\setlength \labelsep      {.5em}
\setlength \labelwidth    {\leftmargini}
\addtolength\labelwidth   {-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

%+-------------+
%|  Enumerate  |
%+-------------+
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{(\theenumi)}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

%+---------------+
%|  Description  |
%+---------------+
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%+---------+
%|  Verse  |
%+---------+
%% \newenvironment{verse}
%%      {\let\\=\@centercr
%%      \list{}{\itemsep      \z@
%%              \itemindent   -1.5em%
%%              \listparindent\itemindent
%%              \rightmargin  \leftmargin
%%              \advance\leftmargin 1.5em}%
%%              \item\relax}
%%      {\endlist}

%+-------------+
%|  Quotation  |
%+-------------+
\newenvironment{quotation}
   {\list{}{\listparindent 1.5em%
            \itemindent\listparindent \topsep 2.5ex plus 1ex minus .2ex
            \rightmargin\leftmargin \itemsep 2.5ex plus 1ex minus .2ex
            \parsep        \z@ \@plus\p@}%
            \item\relax}
   {\endlist}
\newenvironment{quote}
   {\list{}{\rightmargin\leftmargin}%
            \item\relax}
   {\endlist}

%+---------------------+
%|   Acknowledgments   |
%+---------------------+
\def\acknowledgments#1{\long\def\@acknowledgements
                      {\normalsize #1}}

\def\acknowledgments{\par\vspace{\baselineskip}\noindent
  \normalsize\textbf{Acknowledgments}% \enskip
  \par\flushleft\noindent}
  \let\endacknowledgements\relax

%+--------------+
%|   Appendix   |
%+--------------+
\newcounter{appendix}
\setcounter{appendix}{0}
\def\appendix{\normalsize
  \refstepcounter{appendix}
  \def\@beforeskip{2ex plus 1ex minus .2ex}
  \def\@afterskip{2ex plus .2ex}
  \def\theappendix{\Alph{appendix}}
  \@ifstar{\@appendix{}}{\@appendix{~\theappendix}}
}

\def\@appendix#1#2{
  \def\a@title{#2}
    \ifx\@empty\a@title		% no title
      \@startsection {section}{1}{0em}{\@beforeskip}%
      {0pt}{\bf\normalsize}*{Appendix#1.\\\hspace*{\parindent}}
    \else			% with title
      \if@noskipsec
        \leavevmode
      \fi
      \par \@afterindenttrue
      \if@nobreak
        \everypar{}
      \else
        \addpenalty{\@secpenalty}
        \addvspace{\@beforeskip}
      \fi
%     \@hangfrom{\hspace*{\z@}{\bf\normalsize Appendix#1. ~}}%
      {\hspace*{\z@}{\bf\normalsize Appendix#1. ~}}%
      {\interlinepenalty \@M {\bf\normalsize #2}\par}
    \fi
  \setcounter{section}{0}
  \def\thesection{}
  \setcounter{subsection}{0}
  \def\thesubsection{\theappendix.\arabic{subsection}}
  \setcounter{subsubsection}{0}
  \def\thesubsubsection{\thesubsection.\arabic{subsubsection}}
  \setcounter{equation}{0}
  \def\theequation{\theappendix.\arabic{equation}}
}

%+---------------+
%|  Makecaption  |
%+---------------+
\long\def\@makecaption#1#2{
   \vskip 13pt \@plus3pt \@minus3pt% 0.5cm
   \normalsize
   \leftskip=0pt\rightskip=0pt
   \setbox\@tempboxa\hbox{#1 #2}
   \ifdim \wd\@tempboxa >\hsize   % IF longer than one line:
       \leftskip=.3cm
       \hspace*{-0.3cm}\unhbox\@tempboxa\par
   \else                          %   ELSE  Left.
       \hbox to\hsize{\box\@tempboxa\hfil}
%  \else                          %   ELSE  center.
%      \hbox to\hsize{\hfil\box\@tempboxa\hfil}
   \fi
   \vskip .4em \leftskip=0pt \rightskip=0pt}

%% -- -- -- article.cls -- -- -- %%
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand\theequation{\@arabic\c@equation}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure \thefigure.~}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table~\thetable.~}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

%% -- -- -- jgg.sty -- -- -- %%
\def\@float#1{\@ifnextchar[{\@xfloat{#1}}
    {\edef\@tempa{\noexpand\@xfloat{#1}[\csname fps@#1\endcsname]}
    \@tempa}
}

\def\@xfloat#1[#2]{\ifhmode \@bsphack\@floatpenalty -\@Mii\else
   \@floatpenalty-\@Miii\fi\def\@captype{#1}\ifinner
      \@parmoderr\@floatpenalty\z@
    \else\@next\@currbox\@freelist{\@tempcnta\csname ftype@#1\endcsname
       \multiply\@tempcnta\@xxxii\advance\@tempcnta\sixt@@n
       \@tfor \@tempa :=#2\do
                        {\if\@tempa h\advance\@tempcnta \@ne\fi
                         \if\@tempa t\advance\@tempcnta \tw@\fi
                         \if\@tempa b\advance\@tempcnta 4\relax\fi
                         \if\@tempa p\advance\@tempcnta 8\relax\fi
         }\global\count\@currbox\@tempcnta}\@fltovf\fi
    \global\setbox\@currbox\vbox\bgroup
    \hsize\columnwidth \@parboxrestore \normalsize} % <-- \small

\def\end@float{\par\vskip\z@\egroup %% \par\vskip\z@ added 15 Dec 87
   \ifnum\@floatpenalty <\z@
     \@cons\@currlist\@currbox
     \ifdim \ht\@currbox >\textheight
        \ht\@currbox\textheight \fi
     \ifnum\@floatpenalty < -\@Mii
        \penalty -\@Miv
        \@tempdima\prevdepth    %% saving and restoring \prevdepth added
        \vbox{}                 %% 26 May 87 to prevent extra vertical
        \prevdepth \@tempdima   %% space when used in vertical mode
        \penalty\@floatpenalty
      \else \vadjust{\penalty -\@Miv \vbox{}\penalty\@floatpenalty}\@esphack
     \fi\fi}


\def\@eqnnum{(\theequation)\hspace*{\z@}}

\def\pagenum#1{\setcounter{page}{#1}}

\newtoks\@stequation

\newenvironment{Eqnarray}%
    {\arraycolsep 0.14em\begin{eqnarray}}{\end{eqnarray}}
\newenvironment{Manyeqns}%
    {\arraycolsep 0.14em\begin{manyeqns}}{\end{manyeqns}}


\newtoks\@stfigure

\def\picture #1 by #2 (#3){%
\vbox to #2{%
\hrule width #1 height 0pt depth 0pt%
\vfill%
\special{picture #3}}}
\def\scaledpicture #1 by #2 (#3 scaled #4){{%
\dimen0=#1 \dimen1=#2%
\divide\dimen0 by 1000 \multiply\dimen0 by #4%
\divide\dimen1 by 1000 \multiply\dimen1 by #4%
\picture \dimen0 by \dimen1 (#3 scaled #4)}}

\setlength{\arraycolsep}{1.5pt}
\newcommand\email[1]{\smallskip
\footnotesize
\hbox to 3.4cm{\hrulefill}#1}

\pretolerance=300 %%% default value = 100
\tolerance=600    %%% default value = 200

%% -- -- -- article.cls -- -- -- %%
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure

%+----------------+
%|   REFERENCES   |
%+----------------+
\newdimen\bibindent
\newdimen\bibleftmargin
\newdimen\bibitemsep
\newdimen\bibparsep
\newdimen\bibtext
\newdimen\biblabelsep
\newdimen\bibleftmargini

\newif\ifbibchapter
\global\bibchaptertrue

\setlength\bibleftmargin {18pt}
\setlength\bibitemsep {0pt}
\setlength\bibparsep {0pt}

\newif\ifnumsqure
\global\numsquretrue
\setlength\biblabelsep {5pt}
\setlength\bibleftmargini {5.75pt}

\newenvironment{thebibliography}[1]
  {\normalsize
   \def\@tempa{#1}%
   \section*{References}
   \ifx\@tempa\@empty
     \list{}%
     {\labelwidth0pt\labelsep0pt
      \leftmargin\bibleftmargin%12
      \itemindent-\bibleftmargin
      \itemsep\bibitemsep
      \parsep\bibparsep
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\arabic{enumiv}}}%
   \else
     \setbox\tempbox\hbox{\@tempa.}
     \tempdimen\wd\tempbox
     \ifnumsqure
     \else
     \def\@biblabel##1{{\hbox to \tempdimen{\hfill##1.}}}\fi%
     \list{\@biblabel{\arabic{enumiv}}}%
     {\settowidth\labelwidth{\@biblabel{#1}}%
      \labelsep3pt\leftmargin\bibtext
        \advance\leftmargin\bibtext
      \ifnumsqure
        \fi
      \itemindent0pt
      \itemsep\bibitemsep
      \parsep\bibparsep
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\arabic{enumiv}}}%
   \fi
   \sloppy\clubpenalty4000\widowpenalty4000%
   \sfcode`\.=\@m}
   {\def\@noitemerr
   {\@latex@warning{Empty 'thebibliography' environment}}%
   \endlist}

\newcounter{dummy}
\def\thebibliography#1{\section*{\refname}
 \addcontentsline{toc}{section}{\refname}
 \list{}{\usecounter{dummy}%
         \labelwidth\z@
	 \leftmargin 1.5em
	 \itemsep \z@
	 \itemindent-\leftmargin}
 \reset@font\small
 \parindent\z@
 \parskip\z@ plus .1pt\relax
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax
}
\let\endthebibliography=\endlist
\def\@biblable#1{\hspace*{\labelsep}[#1]}

\def\newblock{\hskip .1em plus .3em minus .07em}
\usepackage[authoryear]{natbib}
\bibpunct{(}{)}{;}{a}{}{,}

\renewcommand\refname{References}

\def\references{
  \@startsection {section}{1}{\z@}
  {2.5ex plus 1ex minus .2ex}{.5ex plus .2ex}
  {\normalsize\bf}*{References}
  \normalsize \let\\=\@centercr
  \list{}{\itemsep\z@ \itemindent -.3cm\listparindent \itemindent
          \leftmargin\z@
          \rightmargin\leftmargin\advance\leftmargin .3cm}
  \item[]
}
\let\endreferences=\endlist

%+--------+
%|  Date  |
%+--------+
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%% \if@twoside
%% \else
  \raggedbottom
%% \fi
%% \if@twocolumn
%%   \twocolumn
%%   \sloppy
%%   \flushbottom
%% \else
%%   \onecolumn
%% \fi
\endinput
%% 
%% End of file `EPS.cls'.
