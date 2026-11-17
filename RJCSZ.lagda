\begin{code}
open import Level
  using (
    _⊔_
  )
open import Data.Product
  as Σ
  using (
    Σ
  )
\end{code}

\begin{code}
Prenu : Set
Prenu = {!!}

Smuni : ∀ {a b} → {A : Set a} → Set b → A → Prenu → Set (a ⊔ b)
Smuni = {!!}

Nonselsmu : ∀ {a} → {A : Set a} → A → Prenu → Set a
Nonselsmu = {!!}

Selkai : Set
Selkai = {!!}

Co'eJaCinmo : ∀ {a} → {A : Set a} → Prenu → Selkai → A → Set a
Co'eJaCinmo = {!!}

Stace-Zi'o : ∀ {a} → {A : Set a} → Prenu → A → Set a
Stace-Zi'o = {!!}

Ka'e-Re'enjeJaCinmoSeZukte : Set
Ka'e-Re'enjeJaCinmoSeZukte = {!!}

Rinka : Prenu → Ka'e-Re'enjeJaCinmoSeZukte → Set
Rinka = {!!}

data Re'enjeJaCinmoSeZukte (sz : Ka'e-Re'enjeJaCinmoSeZukte) (p : Prenu) : Set₁ where
  cnm : Rinka p sz
      → (sc : Selkai)
      → (c : Co'eJaCinmo p sc sz)
      → Stace-Zi'o p c
      → Re'enjeJaCinmoSeZukte sz p
  smn : {A B : Set}
      → Rinka p sz
      → (sm : Smuni A B p)
      → Stace-Zi'o p sm
      → Re'enjeJaCinmoSeZukte sz p
\end{code}

\begin{code}
record IsDada (d : Ka'e-Re'enjeJaCinmoSeZukte) : Set₁ where
  field
    p : Prenu
    rjcsz : Re'enjeJaCinmoSeZukte d p
    ns : Nonselsmu d p

module _ (p : Prenu)
         (k : Ka'e-Re'enjeJaCinmoSeZukte)
         (r : Rinka p k)
         (sk : Selkai)
         (cm : Co'eJaCinmo p sk k)
         (sc : Stace-Zi'o p cm)
         (ns : Nonselsmu k p) where
  _ : IsDada k
  _ = ID
    where
    RJCSZ : Re'enjeJaCinmoSeZukte k p
    RJCSZ = cnm r sk cm sc
    ID = record {rjcsz = RJCSZ; ns = ns}
\end{code}
