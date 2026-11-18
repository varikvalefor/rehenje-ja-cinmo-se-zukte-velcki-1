\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
\newunicodechar{⊔}{\ensuremath{\mathnormal\sqcup}}
\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{♯}{\ensuremath{\mathnormal\sharp}}
\newunicodechar{∘}{\ensuremath{\mathnormal\circ}}
\newunicodechar{₀}{\ensuremath{\mathnormal{{}_0}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{{}_1}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpF[1]{\AgdaOperator{\F{#1}}}

\newcommand\sds{\spacefactor\sfcode`.\ \space}

\title{le cipra velcki be le smuni be lu re'enje ja cinmo se zbasu bei la .varik.\ / A Test Definition of the Meaning (for VARIK) of ``Art''}
\author{la .varik.\ .VALefor.}
\begin{document}

\maketitle

\section{le vrici / The Miscellaneous}

\begin{code}
open import Level
  using (
    _⊔_
  )
\end{code}

\section{le prenu se ctaipe / The Prenu Type}
\paragraph{la .lojban.}
ni'o la'oi .\F{Prenu}.\ se ctaipe lo co'e ja sinxa be lo prenu\\
.i la .varik.\ na jinvi le du'u lo prenu cu ctaipe lo su'o co'e\sds  .i la'e di'u lijda co'e

\paragraph{English}
\F{Prenu} is the type of representations/whatever of prenu.\\
VARIK does not opine that prenu are terms of some type.  Not opining is a religious thing.

\begin{code}
Prenu : Set
Prenu = {!!}
\end{code}

\section{le se ctaipe co su'u smuni / The Type regarding Being Meaningful}

\begin{code}
Smuni : ∀ {a b} → {A : Set a} → Set b → A → Prenu → Set (a ⊔ b)
Smuni = {!!}
\end{code}

\section{le se ctaipe co su'u nonselsmu / The Type regarding Being Nonsense}

\begin{code}
Nonselsmu : ∀ {a} → {A : Set a} → A → Prenu → Set a
Nonselsmu = {!!}
\end{code}

\section{le selkai se ctaipe / The Property/Quality Type}

\begin{code}
Selkai : Set
Selkai = {!!}
\end{code}

\section{le se ctaipe co su'u co'e ja cinmo / The Type regarding Feeling}

\begin{code}
Co'eJaCinmo : ∀ {a} → {A : Set a} → Prenu → Selkai → A → Set a
Co'eJaCinmo = {!!}
\end{code}

\section{le se ctaipe co su'u stace / The Type regarding Sincerity}

\begin{code}
Stace-Zi'o : ∀ {a} → {A : Set a} → Prenu → A → Set a
Stace-Zi'o = {!!}
\end{code}

\section{le se ctaipe Coke cumki ke re'enje ja cinmo se ctaipe / The Type of Possible Art}

\begin{code}
Ka'e-Re'enjeJaCinmoSeZukte : Set
Ka'e-Re'enjeJaCinmoSeZukte = {!!}
\end{code}

\section{le se ctaipe co su'u zukte / The Type regarding Enacting Things}

\begin{code}
Zukte : Prenu → Ka'e-Re'enjeJaCinmoSeZukte → Set
Zukte = {!!}
\end{code}

\section{le se ctaipe co su'u re'enje ja cinmo se zukte / The Type regarding Being Art}

\begin{code}
data Re'enjeJaCinmoSeZukte (sz : Ka'e-Re'enjeJaCinmoSeZukte)
                           (p : Prenu) : Set₁ where
  cnm : Zukte p sz
      → (sc : Selkai)
      → (c : Co'eJaCinmo p sc sz)
      → Stace-Zi'o p c
      → Re'enjeJaCinmoSeZukte sz p
  smn : {A B : Set}
      → Zukte p sz
      → (sm : Smuni A B p)
      → Stace-Zi'o p sm
      → Re'enjeJaCinmoSeZukte sz p
\end{code}

\section{le me'oi .Dada.\ mupli / The Dada Example}

\begin{code}
record IsDada (d : Ka'e-Re'enjeJaCinmoSeZukte) : Set₁ where
  field
    p : Prenu
    rjcsz : Re'enjeJaCinmoSeZukte d p
    ns : Nonselsmu d p
\end{code}

\begin{code}
module _ (p : Prenu)
         (k : Ka'e-Re'enjeJaCinmoSeZukte)
         (r : Zukte p k)
         (sk : Selkai)
         (cm : Co'eJaCinmo p sk k)
         (sc : Stace-Zi'o p cm)
         (ns : Nonselsmu k p) where
  _ : IsDada k
  _ = record {rjcsz = RJCSZ; ns = ns}
    where
    RJCSZ : Re'enjeJaCinmoSeZukte k p
    RJCSZ = cnm r sk cm sc
\end{code}
\end{document}
