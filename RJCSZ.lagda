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

Selkai : Set
Selkai = {!!}

Cinmo : ∀ {a} → {A : Set a} → Prenu → Selkai → A → Set a
Cinmo = {!!}

Stace-Zi'o : ∀ {a} → {A : Set a} → Prenu → A → Set a
Stace-Zi'o = {!!}

Ka'e-Re'enjeJaCinmoSeZukte : Set
Ka'e-Re'enjeJaCinmoSeZukte = {!!}

data Re'enjeJaCinmoSeZukte (sz : Ka'e-Re'enjeJaCinmoSeZukte) (p : Prenu) : Set₁ where
  cnm : (sc : Selkai)
      → (c : Cinmo p sc sz)
      → Stace-Zi'o p c
      → Re'enjeJaCinmoSeZukte sz p
  smn : {A B : Set}
      → (sm : Smuni A B p)
      → Stace-Zi'o p sm
      → Re'enjeJaCinmoSeZukte sz p
\end{code}

\begin{code}
IsDada : Ka'e-Re'enjeJaCinmoSeZukte → Set₁
IsDada = λ d → Σ Prenu (Re'enjeJaCinmoSeZukte d) Σ.× {!!}

ds : (Σ
       Ka'e-Re'enjeJaCinmoSeZukte
       (λ a → IsDada a Σ.× Σ Prenu (Re'enjeJaCinmoSeZukte a)))
ds = k Σ., ({!!} Σ., {!!}) Σ., {!!}
  where
  k = {!!}
\end{code}
