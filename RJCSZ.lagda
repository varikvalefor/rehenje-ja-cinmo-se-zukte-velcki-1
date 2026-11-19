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

\title{le cipra velcki be le smuni be lu re'enje ja cinmo se zukte bei la .varik.\ / A Test Definition of the Meaning (for VARIK) of ``Art''}
\author{la .varik.\ .VALefor.}
\begin{document}

\maketitle

\begin{abstract}
	\paragraph{la .lojban.}
	ni'o la .varik.\ cu ciksi le smuni be lu re'enje ja cinmo se zukte bei vo'a bau la'oi .Agda.\ joi la .lojban.\ldots fo le na te birti be vo'a\ sds  .i le te tcidu cu jai cipra fi le smuni\sds  .i la .varik. na co'e ja djica lo nu panra vo'a zo'e ja le smuni be lu re'enje ja cinmo se zukte li'u fa lo prenu jenai ke du be vo'a

	\paragraph{English}
	VARIK defines (with English and Agda) the meaning (for VARIK) of ``art''.  The document is a test for the meaning.  VARIK does not desire/whatever that prenu which are not VARIK resemble (with regard to the meaning (of ``art'') or whatever) VARIK.
\end{abstract}

\section{le vrici / The Miscellaneous}

\begin{code}
{-# OPTIONS --safe #-}

open import Level
  using (
    _⊔_
  )
open import Function
  using (
    _$_
  )
open import Data.String
  using (
    String
  )
\end{code}

\section{le jicmu / The Basic}

\subsection{le prenu se ctaipe / The Prenu Type}
\paragraph{la .lojban.}
ni'o la'oi .\F{Prenu}.\ se ctaipe lo co'e ja sinxa be lo prenu\\
.i la .varik.\ na jinvi le du'u lo prenu cu ctaipe lo su'o co'e\sds  .i la'e di'u lijda co'e\\

\paragraph{English}
\F{Prenu} is the type of representations/whatever of prenu.\\
VARIK does not opine that prenu are terms of some type.  Not opining is a religious thing.

\begin{code}
Prenu : Set
Prenu = {!!}
\end{code}

\subsection{le se ctaipe co su'u smuni / The Type regarding Being Meaningful}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Smuni} \B s \B x \B p\ .zoi.\ gi la'e zo'oi .\B s.\ smuni la'e zo'oi .\B x.\ lo prenu je ke se sinxa be la'e zo'oi .\B p.

\paragraph{English}
A term of \F{Smuni} \B s \B x \B p exists iff \B s is the meaning (to the prenu which is represented by \B p) of \B x.

\begin{code}
Smuni : ∀ {a b} → {A : Set a} → Set b → A → Prenu → Set (a ⊔ b)
Smuni = {!!}
\end{code}

\subsection{le se ctaipe co su'u nonselsmu / The Type regarding Being Nonsense}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Nonselsmu} \B x \B p\ .zoi.\ gi la'e zo'oi .\B x.\ nonselsmu lo prenu je ke se sinxa be la'e zo'oi .\B p.

\paragraph{English}
A term of \F{Nonselsmu} \B x \B p exists iff \B s is meaningless to the prenu which is represented by \B p.

\begin{code}
Nonselsmu : ∀ {a} → {A : Set a} → A → Prenu → Set a
Nonselsmu = {!!}
\end{code}

\subsection{le selkai se ctaipe / The Property/Quality Type}
\paragraph{la .lojban.}
ni'o lo ro co'e cu ctaipe la'oi .\F{Zilkai}.\ jo cu sinxa lo su'o zilkai\sds  .i la .varik.\ cu zukte tu'a zo sinxa ki'u zo'e joi le su'u vo'a djica lo nu lo velcki cu sampu tu'a lo me'oi .level.

\paragraph{English}
For all $x$, $x$ is a term of \F{Zilkai} iff $x$ represents some property/quality.  The reason for using ``represents'' is relevant to that (VARIK desires that the definition is simple with regard to levels.

\begin{code}
Zilkai : Set
Zilkai = {!!}
\end{code}

\subsection{le se ctaipe co su'u co'e ja cinmo / The Type regarding Feeling}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Co'eJaCinmo} \B p \B z \B x\ .zoi.\ gi lo prenu je ke se sinxa be la'e zo'oi .\B p.\ cu cinmo lo se sinxa be la'e zo'oi .\B z.\ la'e zo'oi .\B x.

\paragraph{English}
A term of \F{Co'eJaCinmo} \B p \B z \B x exists iff the prenu which is represented by \B p feels/experiences (about \B x) the referent of \B z.

\begin{code}
Co'eJaCinmo : ∀ {a} → {A : Set a} → Prenu → Zilkai → A → Set a
Co'eJaCinmo = {!!}
\end{code}

\subsection{le se ctaipe co su'u stace / The Type regarding Sincerity}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Stace-Zi'o} \B p \B z\ .zoi.\ gi lo prenu je ke se sinxa be la'e zo'oi .\B p.\ cu prane lo ka ce'u stace zi'o la'e zo'oi .\B z.\sds  .i ku'i la .varik.\ na birti lo du'u xu kau frili cumki fa lo mapti je nu birti lo du'u xu kau lo prenu cu stace

\paragraph{English}
A term of \F{Stace-Zi'o} \B p \B z exists iff the prenu which is represented by \B p is perfectly sincere about \B z.  But VARIK is not certain about that (being appropriately certain about whether prenu are sincere/honest is feasible).

\begin{code}
Stace-Zi'o : ∀ {a} → {A : Set a} → Prenu → A → Set a
Stace-Zi'o = {!!}
\end{code}

\subsection{le se ctaipe Coke cumki ke se zukte / The Type of Enactable Things}
\paragraph{la .lojban.}
ni'o ro da zo'u ga jo da ctaipe la'e zoi zoi.\ \F{Stace-Zi'o}\ .zoi.\ gi cumki fa lo su'o nu lo su'o cu zukte da

\paragraph{English}
For all things $x$, $x$ is a term of \F{Stace-Zi'o} iff a thing which is possible is that some prenu enacts $x$.

\begin{code}
Ka'e-SeZukte : ∀ a → Set (Level.suc a)
Ka'e-SeZukte = {!!}
\end{code}

\subsection{le se ctaipe co su'u zukte / The Type regarding Enacting Things}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Zukte} \B p \B z\ .zoi.\ gi lo prenu je ke se sinxa be la'e zo'oi .\B p.\ cu zukte la'e zo'oi .\B z.

\paragraph{English}
A term of \F{Stace-Zi'o} \B p \B z exists iff the prenu which is represented by \B p enacts \B z.

\begin{code}
Zukte : ∀ {a} → Prenu → Ka'e-SeZukte a → Set (Level.suc a)
Zukte = {!!}
\end{code}

\section{le se ctaipe co su'u re'enje ja cinmo se zukte / The Type regarding Being Art}
\paragraph{la .lojban.}
ni'o sa'u ga je lo me'oi .\D{Re'enjeJaCinmoSeZukte} co'e cu ctaipe fi zo'e poi la .varik.\ na prane le ka ce'u birti tu'a ke'a ku'o fe lo su'u re'enje ja cinmo se zuktegi la .varik.\ ku kucli lo du'u xu kau ri krici le du'u ro da poi ke'a prenu zo'u ro de zo'u ga jo de re'enje ja cinmo se zukte de gi su'o di zo'u ga je da prane lo ka ce'u xi re stace fi ga ja lo su'u di smuni de da gi lo su'u da co'e ja cinmo di de gi da stace tu'a di\sds  .i la .varik.\ na birti lo du'u xu kau la'oi .\D{Re'enjeJaCinmoSeZukte}.\ prane le ka ce'u mapti le smuni be lu re'enje ja cinmo se zukte bei vo'a

\paragraph{English}
SIMPLIFICATION.\@  \D{Re'enjeJaCinmoSeZukte} terms are proofs (under an uncertain (for VARIK) context) of that (stuff is art).  VARIK is not certain about whether VARIK believes that (for all prenu $p$, for all things $x$, $x$ is art of $p$ iff (some thing $s$ exists such that $p$ is perfectly sincere about that (($s$ is the meaning (to $p$) of $x$) or that ($p$ feels (about $x$) $s$))\ldots and $s$).  VARIK is not certain about whether \D{Re'enjeJaCinmoSeZukte} is perfectly in accordance with the meaning (for VARIK) of ``art''.

\begin{code}
data Re'enjeJaCinmoSeZukte {a b c}
                           (sz : Ka'e-SeZukte a)
                           (p : Prenu) :
                           Set (Level.suc (Level.suc a) ⊔
                                Level.suc b ⊔
                                Level.suc c) where
  cnm : Zukte p sz
      → (sc : Zilkai)
      → Co'eJaCinmo p sc sz
      → Stace-Zi'o p (Co'eJaCinmo p sc sz)
      → Re'enjeJaCinmoSeZukte sz p
  smn : {B : Set b} → {C : Set c}
      → Zukte p sz
      → (x : C)
      → Smuni B x p
      → Stace-Zi'o p (Smuni B x p)
      → Re'enjeJaCinmoSeZukte sz p
\end{code}

\section{le me'oi .Dada.\ mupli / The Dada Example}

\begin{code}
module Dada where
\end{code}

\begin{code}
  record IsDada {a}
                (d : Ka'e-SeZukte a) :
                Set (Level.suc $ Level.suc a) where
    field
      p : Prenu
      rjcsz : Re'enjeJaCinmoSeZukte {b = Level.zero} {Level.zero} d p
      ns : Nonselsmu d p
\end{code}

\begin{code}
  module _ {a}
           (p : Prenu)
           (k : Ka'e-SeZukte a)
           (r : Zukte p k)
           (zk : Zilkai)
           (cm : Co'eJaCinmo p zk k)
           (sc : Stace-Zi'o p $ Co'eJaCinmo p zk k)
           (ns : Nonselsmu k p) where
    _ : IsDada k
    _ = record {rjcsz = cnm r zk cm sc; ns = ns; p = p}
\end{code}

\section{le skami besna pe'a mupli / The Artificial (Neural Network) Example}
\paragraph{la .lojban.}
ni'o sa'u la .varik.\ cu jinvi ja krici le du'u lo su'o su'u zbasu pe'a lo smuni be lo te pruce be f lo skami besna pe'a cu re'enje ja cinmo se zukte\sds  .i ku'i la .varik.\ na jinvi le du'u lo ro te pruce be fi lo skami besna pe'a cu jai re'enje ja cinmo se zukte

\paragraph{English}
SIMPLIFICATION.\@  VARIK opines or believes that some event/(abstract state)/whatever of assigning (to the output of an artificial (neural network)) meaning is art.  But VARIK does not believe that all things which are output by artificial (neural networks) are art.

\begin{code}
module SBP where
\end{code}

\subsection{le se ctaipe co su'u zbasu pe'a lo smuni / The Types Regarding Assigning Meaning}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{FackiSmuniLLM} \B s \B x \B p\ .zoi.\ gi la'e zo'oi .\B x.\ jai te pruce fi lo skami besna pe'a je cu se smuni la'e zo'oi .\B s.\ lo prenu je ke se sinxa be la'e zo'oi .\B p.

\paragraph{la .lojban.}
A term of \F{FackiSmuniLLM} \B s \B x \B p exists iff (\B x is the output of an artificial (neural network), and \B s is the meaning (to \B p) of \B x).

\begin{code}
  FackiSmuniLLM : ∀ {a}
                → Set a
                → String
                → Prenu
                → Ka'e-SeZukte (Level.suc a)
  FackiSmuniLLM = {!!}
\end{code}

\subsection{le vrici je fancu / Miscellaneous Functions}

\begin{code}
  SmuniLLM→Smuni : ∀ {a}
                 → (A : Set a)
                 → (s : String)
                 → (p : Prenu)
                 → Zukte p $ FackiSmuniLLM A s p
                 → Smuni A s p
  SmuniLLM→Smuni = {!!}
\end{code}

\subsection{le ctaipe / The Proof}

\begin{code}
  module _ {a}
           (p : Prenu)
           (A : Set a)
           (s : String)
           (zsml : Zukte p $ FackiSmuniLLM A s p)
           (zstc : Stace-Zi'o p $ Smuni A s p) where
    _ : Re'enjeJaCinmoSeZukte (FackiSmuniLLM A s p) p
    _ = smn {B = A} zsml s (SmuniLLM→Smuni A s p zsml) zstc
\end{code}

\section{le me'oi .Dada.\ mupli je ke srana be lo skami besna pe'a / The Dada Example which is Relevant to Artificial (Neural Networks)}
\paragraph{la .lojban.}
ni'o la .varik.\ cu jinvi le du'u me'oi .Dada.\ fa lo su'o su'u co'e lo te pruce be fi tu'a lo skami besna pe'a

\paragraph{English}
VARIK opines that some stuff which is done with the output of artificial (neural networks) is Dada.

\begin{code}
module SBP-Dada where
\end{code}

\subsection{le se ctaipe co su'u pruce fa tu'a lo skami besna pe'a / The Type regarding being the Output of an Artificial (Neural Network)}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Zi'oZi'oPruce} \B s\ .zoi.\ gi lo skami besna pe'a cu jai pruce fi la'e zo'oi .\B s.

\paragraph{English}
A term of \F{Zi'oZi'oPruce} \B s exists iff \B s is the output of an artificial (neural network).

\begin{code}
  Zi'oZi'oPruce : String → Ka'e-SeZukte Level.zero
  Zi'oZi'oPruce = {!!}
\end{code}

\subsection{le ctaipe / The Proof}

\begin{code}
  module _ (p : Prenu)
           (s : String)
           (z : Zilkai)
           (zuk : Zukte p $ Zi'oZi'oPruce s)
           (cm : Co'eJaCinmo p z $ Zi'oZi'oPruce s)
           (cms : Stace-Zi'o p $ Co'eJaCinmo p z $ Zi'oZi'oPruce s)
           (ns : Nonselsmu (Zi'oZi'oPruce s) p) where
    _ : Dada.IsDada $ Zi'oZi'oPruce s
    _ = record {
      p = p;
      rjcsz = cnm zuk z cm cms;
      ns = ns
      }
\end{code}
\end{document}
