%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o
%% Departamento de Computação e Sistemas da Universidade Federal de Ouro Preto
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is Glauber M. Cabral, glauber@decsi.ufop.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-decsi-v1}[2014/11/01 v1.0 Modelo do Departamento de Computação e Sistemas da Universidade Federal de Ouro Preto baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage{xcolor}

% Pacote para o logo da UFOP ao lado do cabeçalho.
\RequirePackage{wrapfig}

% Define comando para o nome do Instituto
\providecommand{\imprimirinstituto}{}
\newcommand{\instituto}[1]{\renewcommand{\imprimirinstituto}{#1}}

% Define comando para o nome do Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Define comando para o nome do Colegiado
\providecommand{\imprimircolegiado}{}
\newcommand{\colegiado}[1]{\renewcommand{\imprimircolegiado}{#1}}

% Define comando para o nome do Curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Define comando para o nome do grau
\providecommand{\imprimirgrau}{}
\newcommand{\grau}[1]{\renewcommand{\imprimirgrau}{#1}}

% Define comando para o dia de defesa
\providecommand{\imprimirdia}{}
\newcommand{\dia}[1]{\renewcommand{\imprimirdia}{#1}}

% Define comando para o mes de defesa
\providecommand{\imprimirmes}{}
\providecommand{\imprimirMes}{}
\newcommand{\mes}[1]{%
  \renewcommand{\imprimirmes}{\mesExtenso{#1}}%
  \renewcommand{\imprimirMes}{\MesExtenso{#1}}%
}

\newcommand{\mesExtenso}[1]{%
  \ifcase #1%
  \or janeiro% 1
  \or fevereiro% 2
  \or mar\c{c}o% 3
  \or abril% 4
  \or maio% 5
  \or junho% 6
  \or julho% 7
  \or agosto% 8
  \or setembro% 9
  \or outubto% 10
  \or novembro% 11
  \or dezembro% 12
\fi}
\newcommand{\MesExtenso}[1]{%
  \ifcase #1%
  \or Janeiro% 1
  \or Fevereiro% 2
  \or Mar\c{c}o% 3
  \or Abril% 4
  \or Maio% 5
  \or Junho% 6
  \or Julho% 7
  \or Agosto% 8
  \or Setembro% 9
  \or Outubto% 10
  \or Novembro% 11
  \or Dezembro% 12
\fi}

% Define comando para o ano de defesa
\providecommand{\imprimirano}{}
\newcommand{\ano}[1]{\renewcommand{\imprimirano}{#1}}

% Define comando para data de defesa
\providecommand{\imprimirdatadedefesa}{\imprimirdia{} de \imprimirmes{}  de \imprimirano{}}

% ---
% Convidados para banca
% ---
\providecommand{\imprimirorientadorDepartamento}{}
\newcommand{\orientadorDepartamento}[1]{\renewcommand{\imprimirorientadorDepartamento}{#1}}

\providecommand{\imprimirorientadorTitulacao}{}
\newcommand{\orientadorTitulacao}[1]{\renewcommand{\imprimirorientadorTitulacao}{#1}}

\providecommand{\imprimircoorientadorDepartamento}{}
\newcommand{\coorientadorDepartamento}[1]{\renewcommand{\imprimircoorientadorDepartamento}{#1}}

\providecommand{\imprimircoorientadorTitulacao}{}
\newcommand{\coorientadorTitulacao}[1]{\renewcommand{\imprimircoorientadorTitulacao}{#1}}

\providecommand{\imprimirconvidadoUm}{}
\newcommand{\convidadoUm}[1]{\renewcommand{\imprimirconvidadoUm}{#1}}

\providecommand{\imprimirconvidadoUmDepartamento}{}
\newcommand{\convidadoUmDepartamento}[1]{\renewcommand{\imprimirconvidadoUmDepartamento}{#1}}

\providecommand{\imprimirconvidadoUmTitulacao}{}
\newcommand{\convidadoUmTitulacao}[1]{\renewcommand{\imprimirconvidadoUmTitulacao}{#1}}

\providecommand{\imprimirconvidadoDois}{}
\newcommand{\convidadoDois}[1]{\renewcommand{\imprimirconvidadoDois}{#1}}

\providecommand{\imprimirconvidadoDoisDepartamento}{}
\newcommand{\convidadoDoisDepartamento}[1]{\renewcommand{\imprimirconvidadoDoisDepartamento}{#1}}

\providecommand{\imprimirconvidadoDoisTitulacao}{}
\newcommand{\convidadoDoisTitulacao}[1]{\renewcommand{\imprimirconvidadoDoisTitulacao}{#1}}

\providecommand{\imprimirconvidadoTres}{}
\newcommand{\convidadoTres}[1]{\renewcommand{\imprimirconvidadoTres}{#1}}

\providecommand{\imprimirconvidadoTresDepartamento}{}
\newcommand{\convidadoTresDepartamento}[1]{\renewcommand{\imprimirconvidadoTresDepartamento}{#1}}

\providecommand{\imprimirconvidadoTresTitulacao}{}
\newcommand{\convidadoTresTitulacao}[1]{\renewcommand{\imprimirconvidadoTresTitulacao}{#1}}

% Define comando para o preâmbulo
\preambulo{Monografia apresentada ao curso de \imprimircurso{} do \imprimirdepartamento{} da Universidade Federal de Ouro Preto como requisito parcial para obten{\c c}{\~a}o do grau de \imprimirgrau}
% ---

% ------------------------------------------------------------------------
% CAPA
% ------------------------------------------------------------------------
\renewcommand{\imprimircapa}{%
  \begin{capa}%

    \setlength{\unitlength}{1mm}
    \linethickness{3pt}

    \begin{picture}(0,20)
      {\color{gray}
      \put(-8,2){\line(1,0){140}} % linha horizontal
      }
      \put(-2,8){\line(0,-1){65}} % linha vertical
    \end{picture}
    
    \begin{minipage}[h]{0.8\textwidth}
      \centering
      \begin{OnehalfSpace}
      {\ABNTEXchapterfont\Large\bfseries \imprimirinstituicao{}}

      {\ABNTEXchapterfont\Large\bfseries \imprimirinstituto{}}

      {\ABNTEXchapterfont\Large\bfseries \imprimircolegiado{}}
      \end{OnehalfSpace}
    \end{minipage}
    \begin{minipage}[h]{0.1\textwidth}
        \includegraphics[width=\textwidth]{UFOP.png}
    \end{minipage}

    \begin{minipage}[h]{0.8\textwidth}

      \vspace*{15mm}

      \begin{center}
      \begin{DoubleSpace}
      {\ABNTEXchapterfont\LARGE\bfseries\imprimirtitulo}
      \end{DoubleSpace}

      \vspace*{15mm}

      {\ABNTEXchapterfont\LARGE\bfseries\imprimirautor}
      \end{center}

      \vspace*{15mm}

      {
        \centering
        \begin{OnehalfSpace}
        \ABNTEXchapterfont\LARGE\bfseries TRABALHO DE
        \par
        CONCLUS{\~A}O DE CURSO
        \end{OnehalfSpace}
      }

      \vspace*{5mm}

      \hspace*{3cm}
      \begin{minipage}{\textwidth}
      \begin{OnehalfSpace}
        {\ABNTEXchapterfont\Large ORIENTA\c{C}\~{A}O:}
        \par
        {\ABNTEXchapterfont\Large \imprimirorientador}
      \end{OnehalfSpace}
      \end{minipage}

      \vspace*{5mm}

      \begin{minipage}{\textwidth}
      \begin{OnehalfSpace}
        {\ABNTEXchapterfont\bfseries\Large\imprimirMes, \imprimirano}
        \par
        {\ABNTEXchapterfont\bfseries\Large\imprimirlocal/MG}
      \end{OnehalfSpace}
      \end{minipage}

    \end{minipage}

    \vspace*{5mm}

    \begin{picture}(0,0)
      {\color{gray}
      \put(140,0){\line(-1,0){150}} % linha horizontal
      \put(130,-10){\line(0,1){85}} % linha vertical
      }
    \end{picture}

    \vspace*{5mm}

  \end{capa}
}

% ------------------------------------------------------------------------
% FOLHA DE ROSTO
% ------------------------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}{
\begin{center}
  \vspace*{3cm}

  {\ABNTEXchapterfont\bfseries\Large\imprimirautor}

  \vspace*{\fill}
  \vspace*{\fill}

  {\ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo}

  \vspace*{\fill}

  {\large\imprimirorientadorRotulo~\imprimirorientador\par}%
  \abntex@ifnotempty{\imprimircoorientador}{%
    {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
  }%

  \vspace*{\fill}

  \abntex@ifnotempty{\imprimirpreambulo}{%
    \hspace{.3\textwidth}
    \begin{minipage}{.6\textwidth}
      \begin{SingleSpacing}
        \imprimirpreambulo{}%
      \end{SingleSpacing}
    \end{minipage}%
    \vspace*{\fill}
  }%

  \vspace*{\fill}

  {\ABNTEXchapterfont\bfseries\large Universidade Federal de Ouro Preto}
  \par
  {\ABNTEXchapterfont\bfseries\large\imprimirlocal}
  \par
  {\ABNTEXchapterfont\bfseries\large\imprimirMes{} de \imprimirano{}}

  \vspace*{1cm}
\end{center}
}


% ------------------------------------------------------------------------
% FOLHA DE APROVACAO
% ------------------------------------------------------------------------

% Conteúdo da folha de aprovação

\makeatletter
\newcommand{\folhadeaprovacaocontent}{
  \begin{center}

    {\ABNTEXchapterfont\bfseries\Large FOLHA DE APROVA\c{C}\~{A}O DA BANCA EXAMINADORA}

    \vspace*{\fill}

    {\ABNTEXchapterfont\bfseries\Large\imprimirtitulo}

    \vspace*{\fill}

    {\ABNTEXchapterfont\bfseries\large\imprimirautor}

    \vspace*{\fill}

    \makeatletter
    \abntex@ifnotempty{\imprimirpreambulo}{%
      \begin{minipage}{.9\textwidth}
        \begin{SingleSpacing}
          {\SingleSpacing\bfseries\imprimirpreambulo{} aprovada pela Banca Examinadora abaixo assinada:}%
        \end{SingleSpacing}
      \end{minipage}%
    }%
    \makeatother

    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirorientador}{%
      \assinatura{
        \imprimirorientador \linebreak
        \ABNTEXfontereduzida\imprimirorientadorTitulacao \linebreak
        Orientador \linebreak
        \ABNTEXfontereduzida\imprimirorientadorDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimircoorientador}{%
      \assinatura{
        \imprimircoorientador \linebreak
        \ABNTEXfontereduzida\imprimircoorientadorTitulacao \linebreak
        Coorientador \linebreak
        \ABNTEXfontereduzida\imprimircoorientadorDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoUm}{%
      \assinatura{
        \imprimirconvidadoUm \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoUmTitulacao \linebreak
        Examinador \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoUmDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoDois}{%
      \assinatura{
        \imprimirconvidadoDois \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoDoisTitulacao \linebreak
        Examinador \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoDoisDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoTres}{%
      \assinatura{
        \imprimirconvidadoTres \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoTresTitulacao \linebreak
        Examinador \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoTresDepartamento
      }
    }%

    \vspace*{\fill}

    {\ABNTEXchapterfont\imprimirlocal, \imprimirdatadedefesa}
    \vspace*{1cm}
  \end{center}
}
\makeatother

\makeatletter
\newcommand{\imprimirfolhadeaprovacaonostar}[0]{%
  \begin{folhadeaprovacao}
     \folhadeaprovacaocontent%
  \end{folhadeaprovacao}}
\newcommand{\imprimirfolhadeaprovacao}[1][\folhadeaprovacaoname]{%
 \imprimirfolhadeaprovacaonostar%
}
\makeatother
