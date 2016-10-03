%%
%%
%%
%% =============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{di-postgrad-grades}[2016/09/25 v0.2 DIT.UoA Academic Transcript in English]

\LoadClass[a4paper,oneside,11pt]{article}[2014/09/29]

\RequirePackage[cm-default]{fontspec}
\setmainfont[Script=Greek]{Times New Roman}
%% =============================================================================

%% Packages
%% =============================================================================
\RequirePackage[a4paper, top=2.5cm, bottom=3.5cm, left=1cm, right=1cm,
                bindingoffset=0cm, headsep=0cm,
                headheight=77pt, footskip=34pt]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{setspace}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{ctable}
\RequirePackage{afterpage}
\RequirePackage{ltxtable}
%% =============================================================================

%% Define headers and footers for first and subsequent pages
%% =============================================================================
\pagestyle{fancy}
\chead{\restpagesheader}
\cfoot{\restpagesfooter}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhf{}
  \cfoot{\firstpagefooter}
}
%% =============================================================================

%% Student details
%% =============================================================================
\newcommand{\dateofissue}{}
\newcommand{\refnumber}{00000}
\newcommand{\address}{}
\newcommand{\information}{}
\newcommand{\contactnumber}{}
\newcommand{\registrar}{}
\newcommand{\signer}{}

\newcommand{\studentname}{}
\newcommand{\studentsurname}{}
\newcommand{\studentid}{}
\newcommand{\studentregistrationdate}{}
\newcommand{\studentfathername}{}
\newcommand{\studentmothername}{}
\newcommand{\studentbirthplace}{}
\newcommand{\studentbirthdate}{}
\newcommand{\studentmunicipality}{}
\newcommand{\studentmunicipalitynumber}{}

\newcommand{\studentregistrationyear}{}
\newcommand{\thisyear}{}
\newcommand{\graduationdate}{}
\newcommand{\pledgedate}{}
\newcommand{\degreeid}{}
\newcommand{\gpa}{}
\newcommand{\gpainfull}{}
\newcommand{\enrolledvia}{Nationwide Examinations}
\newcommand{\currentsemester}{}
%% =============================================================================

%% First page header
%% =============================================================================
\newcommand{\certheader}{
    \thispagestyle{plain}
    \center{\fontsize{12}{12}\selectfont\textbf{HELLENIC REPUBLIC}}
    \begin{center}
    \includegraphics[height=2cm]{athena-black} \\[4pt]
    \setstretch{1.2}{
        \fontsize{11}{12}\selectfont
        \textbf{NATIONAL AND KAPODISTRIAN UNIVERSITY OF ATHENS \\
                SCHOOL OF SCIENCE \\
                DEPARTMENT OF INFORMATICS AND TELECOMMUNICATIONS\\
                GRADUATE STUDIES PROGRAM
        }
    }
    \end{center}
    \vspace{0.5cm}
}
%% =============================================================================

%% First page footer
%% =============================================================================
\newcommand{\firstpagefooter}{
  \fontsize{10}{11}\selectfont{
  \begin{tabularx}{\textwidth}{ l l X }
      \underline{Note:} & Non-successful examination: & Grade less than 5 (five) \\
      & Successful examination: & Grade greater than or equal to 5,0
  \end{tabularx}
  \\\vspace{0.5cm}
  \--- \hspace{0.05cm} \thepage \hspace{0.05cm} \---}
}
%% =============================================================================

%% Rest pages header
%% =============================================================================
\newcommand{\restpagesheader}{
    \begin{tabularx}{\textwidth}{ X X X }
        \specialrule{.1em}{.05em}{.05em}
        SURNAME & NAME & REGISTRATION NUMBER \\
        \specialrule{.1em}{.05em}{.05em}
        {\textbf{\studentsurname}} & {\textbf{\studentname}} & {\textbf{\studentid}} \\
        \specialrule{.1em}{.05em}{.05em}
    \end{tabularx}\\[8pt]
    {\fontsize{9}{10}\selectfont
    \begin{tabularx}{\textwidth}{ m{1.5cm} m{8cm} m{2.5cm} m{4cm} m{2.5cm}}
        \textbf{\underline{Code}} & \textbf{\underline{Title}} & \textbf{\underline{Exam. Period}} &
        \textbf{\underline{Year}} & \textbf{\underline{Grade}}
    \end{tabularx}}
}
%% =============================================================================

%% Rest pages footer
%% =============================================================================
\newcommand{\restpagesfooter}{
    \fontsize{10}{11}\selectfont{
    \begin{tabularx}{\textwidth}{ l l X }
        \underline{Note:} & Successful examination: & Grade greater than or equal to 5 (five) \\
        ~ & Non-successful examination: & Grade less than 5 (five) \\
        ~ & Successful examination: & Grade greater than or equal to 5,0
    \end{tabularx}
    \\\vspace{0.5cm}
    \--- \hspace{0.05cm} \thepage \hspace{0.05cm} \---}
}
%% =============================================================================

%% Info
%% =============================================================================
\newcommand{\certinfo}{
    \rule{\textwidth}{.5pt}
    {\fontsize{12pt}{0pt}\selectfont
      \ifgraduated
        GRADUATE'S CERTIFICATE OF ACADEMIC TRANSCRIPT
      \else
        CERTIFICATE OF ACADEMIC TRANSCRIPT
      \fi
    }
    \rule[2mm]{\textwidth}{.5pt}
}
%% =============================================================================

%% Student info
%% =============================================================================
\newcommand*{\thead}[1]{
  \multicolumn{1}{c}{\bfseries \underline{#1}}
}
\newcommand{\studentinfo}{
    \flushleft{It is certified that the information provided below are accurate and true.}
    \vspace{0.3cm}
    \begin{center}
    \begin{tabularx}{\textwidth}{ l X }
      \thead{IDENTITY INFORMATION} \\
        Surname & \textbf{\studentsurname} \\
        Name & \textbf{\studentname} \\
        Father's Name & {\studentfathername} \\
        Mother's Name & {\studentmothername} \\
        Place of Birth & {\studentbirthplace} \\
        Date of Birth & {\studentbirthdate} \\
      \thead{}\\
      \thead{REGISTRATION INFORMATION} \\
        Academic year of Registration & {\studentregistrationyear} \\
        Date of Registration & {\studentregistrationdate} \\
        Registration Number & \textbf{\studentid} \\
    \end{tabularx}
    \end{center}
    \vspace{0.4cm}
    The student has been chosen for the Department's M.Sc. specialization with title: 'Computing Systems: Software and Hardware (SYS)'.   \\[6pt]
    This certificate is granted for any legal use.

    \vspace{0.5cm}
}
%% =============================================================================

%% Grades section
%% =============================================================================
\newenvironment{grades}{%
   \restpagesheader
   \fontsize{10}{10}\selectfont{
}{%
}
}


%% gradesgrouping expects one argument:
%% if graduated is set, then argument is No of semester, e.g. 1st, 2nd, 3rd, ..
%% otherwise, the argument is the academic year, e.g. 1970-1971
\newenvironment{gradesgrouping}[1][]{%

    \bfseries \hspace{6mm}
    \mdseries
    \tabularx{\textwidth}{ m{1.5cm} m{8cm} m{2.5cm} m{4cm} m{2.5cm}}
}{%
    \endtabularx
    \vspace{0.2cm}
}

\newcommand{\grade}[5]{%
    #1 & #2 & #3 & #4 & #5 \\[8pt]
}

%% =============================================================================

%% Last section
%% =============================================================================
\newcommand{\farewell}{
    \bfseries
    \vspace{0.5cm}
    \begin{center}
        THE REGISTRAR: {\registrar} \\[20pt]
    \end{center}
    \mdseries
}
%% =============================================================================
\endinput
