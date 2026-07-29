import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure ResolutionStep where
  clause1 : String
  clause2 : String
  resolvent : String
  isBinaryResolution : Prop
  isFactoring : Prop

structure ResolutionEvidence (r : ResolutionStep) where
  binaryResolutionClosed : r.isBinaryResolution ∨ r.isFactoring
  resolventNonEmpty : r.resolvent ≠ ""

def ResolutionClosed (r : ResolutionStep) : Prop :=
  (r.isBinaryResolution ∨ r.isFactoring) ∧ (r.resolvent ≠ "")

theorem resolution_closed_from_evidence (r : ResolutionStep) (e : ResolutionEvidence r) : ResolutionClosed r := by
  exact And.intro e.binaryResolutionClosed e.resolventNonEmpty

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse