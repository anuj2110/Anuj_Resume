\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2019/04/14 My custom CV class]


\LoadClass{article}
\RequirePackage{titlesec}



\titleformat{\section}         % Customise the \section command 
{\Large\scshape\raggedright} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
  

\titlespacing{\section}{0pt}{3pt}{3pt}
\let\oldtitleline\titleline

\setlength{\titlewidth}{0.5\textwidth}
\renewcommand{\titleline}{\oldtitleline*}

\titleformat{\subsection}
{\Large\scshape\raggedright}
{}{0em}
{}


\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
	\centerline{\Huge{#1}}
	
}

\newcommand\contact[5]{%
	\centerline{%
		\makebox[0pt][c]{%
			#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
			\ #4 \ \ #5%
		}%
	}%
}


