%%
%% This is file `DES.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% DES.dtx  (with options: `class')
%% 
%% This is the `DES' document class used for composition of LaTeX
%% monographs (master and PhD thesis, and PhD qualifying exams)
%% satisfying the requirements of the Coordination of Research and
%% Graduate Courses in Engineering at the Federal University of
%% Pernambuco.
%% 
%% Copyright (C) 2008 Vicente Helano and George Ainsworth Jr.
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Vicente Helano,
%%            George Ainsworth
%%            Guilherme Melo
%% 
%% \CheckSum{1417}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\def\filename{DES.dtx}
\def\fileversion{v2.2}
\def\filedate{2011/02/08}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{DES}[\filedate\ \fileversion\ DES Dissertations and Thesis]
\LoadClass[12pt,a4paper,oneside]{book}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{eqparbox}
\RequirePackage{ltxcmds}
\RequirePackage{ifthen}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
  top=2.5cm,bottom=2.5cm,left=3.0cm,right=3.0cm]{geometry}
\def\DESTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}
\newboolean{maledoc}
\setboolean{maledoc}{false}
\renewcommand\refname{Referências}
\renewcommand{\listfigurename}{Lista de Ilustrações}
\newcommand\coadvisor{none}

\DeclareOption{msc}{%
  \newcommand{\@degree}{M.Sc.}
  \newcommand{\@degreename}{Mestrado}
  \newcommand{\local@degname}{Mestre}
  \newcommand{\foreign@degname}{Master}
  \newcommand\local@doctype{Disserta{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Dissertation}
}

\DeclareOption{undgrad}{%
  \newcommand{\@degree}{Eng.}
  \newcommand{\@degreename}{Gradua{\c c}{\~ a}o}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \setboolean{maledoc}{true}
  \newcommand\local@doctype{Trabalho de Conclus{\~ a}o de Curso}
  \newcommand\foreign@doctype{Course Conclusion Work}
}

\DeclareOption{dsc}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \newcommand\local@doctype{Tese}
  \newcommand\foreign@doctype{Thesis}
}

\DeclareOption{numbers}{%
  \PassOptionsToPackage{numbers}{natbib}
}

\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}
\ProcessOptions\relax
\newcommand\department[1]{%
  \ifthenelse{\equal{#1}{DES-TEL}}
  {\global\def\local@coursename{Engenharia de Telecomunica{\c c}{\~ o}es}
    \global\def\foreign@coursename{Telecommunication Engineering}
    \global\def\local@deptname{Departamento de Eletr{\^ o}nica e Sistemas}
    \global\def\foreign@deptname{Departament of Eletronic and Systems}}{}
  \ifthenelse{\equal{#1}{DES-ELE}}
  {\global\def\local@coursename{Engenharia Eletr{\^ o}nica}
    \global\def\foreign@coursename{Electronic Engineering}
    \global\def\local@deptname{Departamento de Eletr{\^ o}nica e Sistemas}
    \global\def\foreign@deptname{Departament of Eletronic and Systems}}{}
}
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}

\newcount\@advisor\@advisor0
\newcommand\advisor[3]{%
  \global\@namedef{DESAdvisor:\expandafter\the\@advisor}{#1\ #2, #3}
  \global\advance\@advisor by 1
}

\newcount\@examiner\@examiner1
\newcommand\examiner[3]{%
  \global\@namedef{DESExaminer:\expandafter\the\@examiner}{#1\ #2, #3}
  \global\advance\@examiner by 1
}
\newcount\@coadvisor\@coadvisor0
\renewcommand\coadvisor[3]{%
  \global\@namedef{DESCoadvisor:\expandafter\the\@coadvisor}{#1\ #2, #3}
  \global\advance\@coadvisor by 1
}

\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[2]{%
  \month=#1
  \year=#2
}
\newcommand\local@monthname{\ifcase\month\or
    Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
    Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December\fi}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{DESKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}
\newcommand\keywords[1]{%
  \textbf{Keywords: } #1
}
\newcommand\palavraschave[1]{%
  Palavras-chave: #1
}

\renewcommand\mainmatter{%
  \DES@mainBegin
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \maketitle
  \makefrontpage
  \includepdf{fichaDeIdentificacao.pdf}
  \makesignpage %Página de assinaturas
  \ifthenelse{\boolean{maledoc}}{}{\makecatalog}%
  \justifying
}

\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \bibliographystyle{Controle/DES}
}

\renewcommand\maketitle{%
  \ltx@ifpackageloaded{hyperref}{\DES@hypersetup}{}%
  \begin{titlepage}
    \begin{flushleft}
      \vspace{-1.5cm}
      \setlength\baselineskip{0pt}
      \setlength\parskip{1mm}
      \makebox[120mm][c]{\hspace{4.8cm}\includegraphics[width = 14cm]{Ilustrações/logo_ufpe}}
    \end{flushleft}
    \begin{center}
      \vspace{-2.5cm}
      \Large
      \begin{flushleft}
        %\vspace{-1.5cm}
        \setlength\baselineskip{0pt}
        \setlength\parskip{1mm}
        \makebox[120mm][c]{\hspace{-12.0cm}\includegraphics[width = 4cm]{Ilustrações/CTG_UFPE}}
      \end{flushleft}
      \vspace{-3.8cm}
      \begin{flushleft}
        %\vspace{-1.5cm}
        \setlength\baselineskip{0pt}
        \setlength\parskip{1mm}
        \makebox[120mm][c]{\hspace{18.0cm}\includegraphics[width = 4cm]{Ilustrações/DES}}
      \end{flushleft}
      \vspace{-3.3cm}
      Universidade Federal de Pernambuco\\
      Centro de Tecnologia e Geociências\\
      \local@deptname\\
      \vspace{1cm}
      \textbf{Graduação em \local@coursename}\\
      \vspace{1.5cm}
      \nohyphens{\textbf{\@authname\ \@authsurn}}\par
      \vspace{3cm}
      \nohyphens{\textbf{\local@title}}\par
      \vspace*{\fill}
      \local@cityname\par
      \number\year
    \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax
  \justifying
  \normalsize
}

\newcommand\makefrontpage{%
  \newpage
  \thispagestyle{empty}
  \begin{center}
    \Large
    {\@authname\ \@authsurn}\par
    \vspace{2cm}
    \sloppy\nohyphens{\textbf{\local@title}}\par
  \end{center}\par
  \vspace{3cm}
  \justifying
  \singlespacing
  \leftskip 170pt
  \normalsize
  Primeiro  Relatório apresentado aos professores do curso de Eletrônica Digital, do \local@deptname, da Universidade Federal de Pernambuco, como requisito parcial para aprovação na disciplina de Eletrônica Digital do \local@coursename.\\
  \vspace{3cm}
  \large
  \begin{flushright}
    \do {
      \centering
      \vskip26\p@ \baselineskip12pt
      {\textbf{Orientador(a):} \csname DESAdvisor:\the\count1 \endcsname}\\
      \vspace*{0.5cm}
      \count1=0
      \@whilenum \count1<\@coadvisor \do {
        {\textbf{Coorientador(a):} \csname DESCoadvisor:\the\count1 \endcsname}\\
        \advance\count1 by 1}
    }
  \end{flushright}
  \vspace*{\fill}
  \centering
  \Large
  \local@cityname\par
  \number\year \\
  \justifying
  \normalsize
}

\newcommand\makesignpage{%
  \newpage
  \thispagestyle{empty}
  \begin{center}
    \Large
    {\@authname\ \@authsurn}\par
    \vspace{1cm}
    \sloppy\nohyphens{\textbf{\local@title}}\par
  \end{center}\par
  \vspace{1cm}
  \justifying
  \singlespacing
  \leftskip 170pt
  \normalsize
  Relatório apresentado aos professores do curso de Eletrônica Digital, do \local@deptname, da Universidade Federal de Pernambuco, como requisito parcial para aprovação na disciplina de Eletrônica Digital do \local@coursename.\\
  %\hspace{-10cm}
  \begin{flushright}
    %\vspace{-0.75cm}
    \raggedright{Apresentado em: \Datadadefesa} \\
    \large
    \vspace{1.5cm}
    \centering
    \textbf{{Banca Examinadora}}
    % \doublespacing
    \vspace{1.5cm}
    \vskip26\p@ \baselineskip12pt
    \eqmakebox[signture@list]{\hrulefill}\\
    \eqmakebox[signture@list]{
      \ \ \ \csname DESAdvisor:\the\count1 \endcsname\ \ \ }\\
    { \exinsto\\ }

    \count1=1
    \@whilenum \count1<\@examiner \do {
    \vspace{1.5cm}
    \vskip26\p@ \baselineskip12pt
    \eqmakebox[signture@list]{\hrulefill}\\
    \eqmakebox[signture@list]{
      \ \ \ \csname DESExaminer:\the\count1 \endcsname\ \ \ }\\
    %                {\ifnum \count1=0 \exinsto\\ \fi}
    {\ifnum \count1=1 \exinstum\\ \fi}
    {\ifnum \count1=2 \exinstdois\\ \fi}
    \advance\count1 by 1}
  \end{flushright}
  \justifying
  \normalsize
  \doublespacing
}

\newcommand\DES@hypersetup{%
\begingroup
% changes to \toks@ and \count@ are kept local;
% it's not necessary for them, but it is usually the case
% for \count1, because the first ten counters are written
% to the DVI file, thus you got lucky because of PDF output
\toks@={}% in this special case not necessary
\count@=0 %
\@whilenum\count@<\value{keywords}\do{%
  % * a keyword separator is not necessary,
  %    if there is just one keyword
  % * \csname DESKeyword:\the\count@\endcsname must be expanded
  %    at least once, to get rid of the loop depended \count@
  \ifcase\count@ % same as \ifnum0=\count@
    \toks@=\expandafter{\csname DESKeyword:\the\count@\endcsname}%
  \else
    \toks@=\expandafter\expandafter\expandafter{%
      \expandafter\the\expandafter\toks@
      \expandafter;\expandafter\space
      \csname DESKeyword:\the\count@\endcsname
    }%
  \fi
  \advance\count@ by 1 %
}%
\edef\x{\endgroup
  \noexpand\hypersetup{%
    pdfkeywords={\the\toks@}%
  }%
}%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@deptname\ da DES/UFPE},
  pdfcreator={LaTeX with DESTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}

\newcommand\dedication[1]{
  \thispagestyle{empty}
  \gdef\@dedic{#1}
  \vspace*{\fill}
  \begin{flushright}
    \begin{minipage}{60mm}
      \raggedleft \it \normalsize \@dedic
    \end{minipage}
  \end{flushright}
  \vspace*{5em}\mbox{}}

\newenvironment{abstract}{%
  \clearpage
  \abstract@toptext\par
  \vspace*{5mm}
  \begin{center}
    \sloppy\nohyphens{\textbf{\local@title}}\par
    \vspace*{5mm}
    \@authname\ \@authsurn \par
    \vspace*{5mm}
    \thispagestyle{empty}
    %    \local@monthname/\number\year
  \end{center}\par
}{\vspace*{\fill}}

\newenvironment{foreignabstract}{%
  \clearpage
  \begin{otherlanguage}{english}
    \foreignabstract@toptext\par
    \vspace*{5mm}
    \begin{center}
      \sloppy\nohyphens{\textbf{\foreign@title}}\par
      \vspace*{5mm}
      \@authname\ \@authsurn \par
      \vspace*{5mm}
      %    \foreign@monthname/\number\year
      \thispagestyle{empty}
    \end{center}\par
    %  \vspace*{\fill}
    \vspace*{2mm}
  \end{otherlanguage}
  %  \vspace*{\fill}
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\foreign@title\@empty
  \global\let\foreign@title\relax
  \global\let\local@title\@empty
  \global\let\local@title\relax
  \global\let\author\relax
  \global\let\author\relax
  \global\let\date\relax}

\renewcommand\listoffigures{%
  \DES@hasLof
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Lista de Ilustrações}%
  %\addcontentsline{toc}{chapter}{\listfigurename}%
  \@mkboth{\MakeUppercase\listfigurename}%
  {\MakeUppercase\listfigurename}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
  \thispagestyle{empty}
}

\renewcommand\listoftables{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listtablename}%
  %\addcontentsline{toc}{chapter}{\listtablename}%
  \@mkboth{%
    \MakeUppercase\listtablename}%
  {\MakeUppercase\listtablename}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
  \thispagestyle{empty}
}

\newcommand\printlosymbols{%
  \renewcommand\glossaryname{\listsymbolname}%
  \@input@{\jobname.los}
}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
    \@sanitize
    \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}

\@onlypreamble\makelosymbols
\AtBeginDocument{%
  \@ifpackageloaded{hyperref}{%
    \def\@wrlos#1#2{%
      \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
      \endgroup
      \@esphack}}{%
    \def\@wrlos#1#2{%
      \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
      \endgroup
      \@esphack}}}

\newcommand\printloabbreviations{%
  \renewcommand\glossaryname{\listabbreviationname}%
  \@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
    \@sanitize
    \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}

\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
  \@ifpackageloaded{hyperref}{%
    \def\@wrlab#1#2{%
      \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
      \endgroup
      \@esphack}}{%
    \def\@wrlab#1#2{%
      \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
      \endgroup
      \@esphack}}}
\AtBeginDocument{%
  \ltx@ifpackageloaded{hyperref}{
    \def\DES@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\DES@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\DES@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}}%
    \def\DES@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}}%
  }{%
    \def\DES@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}}}}%
    \def\DES@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}}}}%
    \def\DES@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}}}}%
    \def\DES@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}}}}%
  }%
}

\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
{\onehalfspacing%
  \chapter*{Referências}%
  %\addcontentsline{toc}{chapter}{\bibname}%
  \addcontentsline{toc}{chapter}{Referências}%
  \makeatletter % remover numeração
  \renewcommand\@biblabel[1]{} % remover numeração
  \makeatother % remover numeração
  \DES@bibBegin
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\raggedright
    \setlength{\labelwidth}{0ex}%
    \setlength{\leftmargin}{0.0ex}%
    \setlength{\itemindent}{0.0ex}%
    \advance\leftmargin\labelsep%
    \@openbib@code%
    \usecounter{enumiv}%
    \let\p@enumiv\@empty%
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy%
  \clubpenalty4000%
  \@clubpenalty \clubpenalty%
  \widowpenalty4000%
  \sfcode`\.\@m}%
{\def\@noitemerr%
  {\@latex@warning{Empty `thebibliography' environment}}%
  \DES@bibEnd
  \endlist}

\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  \thispagestyle{empty}
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
    \setlength{\labelwidth}{1.0in}%
    \setlength{\leftmargin}{1.5in}%
    \setlength{\labelsep}{0.5in}%
    \setlength{\itemindent}{0in}}%
  \sloppy
  \thispagestyle{empty}
}%
{\if@restonecol\twocolumn\fi%
  \endlist}

\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  %\thispagestyle{plain}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem
  \thispagestyle{empty}
}
{\if@restonecol\onecolumn\else\clearpage\fi}

\newcommand\glossaryname{Glossary}
\newcommand\listabbreviationname{Lista de Abreviaturas}
\newcommand\listsymbolname{Lista de S{\' i}mbolos}
\newcommand\local@advisorstring{Orientador(a)}
\newcommand\foreign@advisorstring{Advisor}
\ifthenelse{\boolean{maledoc}}{%
  \newcommand\local@approvedname{Examinado por}%
}{%
  \newcommand\local@approvedname{Examinada por}%
}
\newcommand\local@universityname{Universidade Federal de Pernambuco}
\newcommand\local@deptstring{Programa}
\newcommand\foreign@deptstring{Course}
\newcommand\local@cityname{Recife}
\newcommand\local@statename{PE}
\newcommand\local@countryname{Brasil}

\newcommand\abstract@toptext{%
  \noindent Resumo \ifthenelse{\boolean{maledoc}}{do}{da}
  \local@doctype\ \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  \sloppy\nohyphens{ao \local@deptname, como parte dos requisitos
    necess{\' a}rios para a obten{\c c}{\~ a}o do grau de
    \local@degname\ em \local@coursename (\@degree)}
}
\newcommand\foreignabstract@toptext{%
  \noindent \sloppy\nohyphens{Abstract of \foreign@doctype, presented to
    \foreign@deptname, as a partial fulfillment of the requirements for the
    degree of \foreign@degname\ of \foreign@coursename (\@degree)}
}

\newcommand{\anexosname}{Anexo}
\makeatletter\newcommand\anexos{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\anexosname}%
  %\renewcommand{\thechapter}{\arabic{chapter}}
}
%% 
%%
%% End of file `DES.cls'.
