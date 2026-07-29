import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure Substitution where
  mapping : List (String × String)
  isIdempotent : Prop
  isMostGeneral : Prop

structure UnificationPair where
  term1 : String
  term2 : String
  substitution : Substitution
  isUnifier : Prop
  isMGU : Prop

structure UnificationEvidence (u : UnificationPair) where
  unifierClosed : u.isUnifier
  mguClosed : u.isMGU

def UnificationClosed (u : UnificationPair) : Prop :=
  u.isUnifier ∧ u.isMGU

theorem unification_closed_from_evidence (u : UnificationPair) (e : UnificationEvidence u) : UnificationClosed u := by
  exact And.intro e.unifierClosed e.mguClosed

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse