\begin{code}
open import Level
  using (
    _⊔_
  )
open import Data.Product
  using (
    Σ
  )
\end{code}

\begin{code}
Prenu : Set
Prenu = {!!}

Ka'e-Re'enjeJaCinmoSeZukte : Set
Ka'e-Re'enjeJaCinmoSeZukte = {!!}

Re'enjeJaCinmoSezukte : Ka'e-Re'enjeJaCinmoSeZukte → Prenu → Set
Re'enjeJaCinmoSezukte = {!!}
\end{code}

\begin{code}
Smuni : ∀ {a b} → {A : Set a} → Set b → A → Set (a ⊔ b)
Smuni = {!!}

IsDada : ∀ {a} → {A : Set a} → A → Set a
IsDada = {!!}

ds : Σ Set (λ A → Σ A IsDada)
ds = {!!}
\end{code}
