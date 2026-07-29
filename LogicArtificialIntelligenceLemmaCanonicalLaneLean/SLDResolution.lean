import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure SLDDerivation where
  goalClause : String
  programClauses : List String
  substitutionSequence : List String
  isRefutation : Prop
  length : Nat

structure SLDEvidence (d : SLDDerivation) where
  refutationClosed : d.isRefutation
  lengthPositive : d.length > 0

def SLDClosed (d : SLDDerivation) : Prop :=
  d.isRefutation ∧ d.length > 0

theorem sld_closed_from_evidence (d : SLDDerivation) (e : SLDEvidence d) : SLDClosed d := by
  exact And.intro e.refutationClosed e.lengthPositive

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse