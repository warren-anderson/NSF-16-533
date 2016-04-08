\ProvidesClass{NSF}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}


\usepackage{times}
\usepackage{hyperref} %% Remove before submission!

%%
%% Page setup consistent with the NSF proposal guide 2.5 cm margins all around
%%
\setlength{\textheight}{22.95cm}
\setlength{\textwidth}{16.6cm}
\setlength{\topmargin}{-1.3cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\evensidemargin}{0cm}
\setlength{\parindent}{0.25cm}

%\setlength{\topmargin}{-0.04cm}   % No header
%\setlength{\headheight}{0cm}      % No header
%\setlength{\headsep}{0cm}         % No header
%\setlength{\textheight}{22.94cm}
%\setlength{\footskip}{1.5cm}
%\setlength{\oddsidemargin}{-0.04cm}
%\setlength{\textwidth}{16.59cm}
%\setlength{\oddsidemargin}{-0.04cm}
%\setlength{\evensidemargin}{-0.04cm}
\setlength{\parindent}{1em}
\newcommand\secfont{\fontfamily{cmss}\selectfont}
\newcommand\alanheading[1]{\vspace*{0.07in}\noindent{\secfont\textbf{#1}:}}

\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{\Alph{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}.}

\def\thercsid{\relax}
\def\rcsid#1{\def\next##1#1{\def\thercsid{##1}}\next}

%\newcommand{\nsfsection}[1]{\section*{#1}\markright{#1}}
%\renewcommand{\section}[1]{\@startsection{section}{1}{\z@}%
  %{-3.5ex \@plus -1ex \@minus -.2ex}%
  %{2.3ex \@plus.2ex}%
  %{\centering\normalfont\Large\bfseries}{#1}\markright{#1}}

\renewcommand{\section}{\newpage\setcounter{page}{0}\refstepcounter{page}\secdef{\nsfsection}{\snsfsection}}
\newcommand{\nsfsection}[2][?]{\begin{center}\normalfont\Large\bfseries #1\end{center}\markright{#1}}
\newcommand{\snsfsection}[1]{\nsfsection[#1]{#1}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\centering\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\centering\normalfont\normalsize\itshape}}

\renewcommand{\refname}{References Cited}

\renewcommand{\ps@plain}{%
  \renewcommand{\@oddhead}{}%
  \renewcommand{\@evenhead}{}%
  \renewcommand{\@evenfoot}{\hfil\makebox[0pt][r]{\textrm{\rightmark}}\space--\space\makebox[0pt][l]{\textrm{Page \thepage}}\hfil}%
  \renewcommand{\@oddfoot}{\@evenfoot}%
}
\pagestyle{plain}

\renewenvironment{quote}%
  {\begin{list}{}{\setlength{\topsep}{0pt}\setlength{\rightmargin}{1em}\setlength{\leftmargin}{1em}}\itshape\item\relax}%
  {\end{list}}

\newenvironment{bullets}%
  {\begin{list}{$\bullet$}{\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}\setlength{\topsep}{0pt}\setlength{\rightmargin}{0pt}\setlength{\leftmargin}{1em}}}%
  {\end{list}}

