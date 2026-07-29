import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure ProofSearchPackage where
  formula : Type u
  derivationTree : formula -> Type v
  proofSearchProcedure : Type w
  completeSearch : Prop
  soundness : Prop

structure ProofSearchEvidence (P : ProofSearchPackage) where
  completeSearchClosed : P.completeSearch
  soundnessClosed : P.soundness

def ProofSearchClosed (P : ProofSearchPackage) : Prop :=
  P.completeSearch ∧ P.soundness

theorem proof_search_closed_from_evidence (P : ProofSearchPackage)
    (E : ProofSearchEvidence P) : ProofSearchClosed P := by
  exact And.intro E.completeSearchClosed E.soundnessClosed

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse