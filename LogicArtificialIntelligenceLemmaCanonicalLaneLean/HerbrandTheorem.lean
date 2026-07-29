import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure HerbrandStructure where
  universe : Type u
  baseSymbols : List String
  interpretation : String → Type v

structure HerbrandModel (H : HerbrandStructure) where
  groundTerms : List String
  satisfiesClauseSet : Prop
  isMinimal : Prop

structure HerbrandEvidence {H : HerbrandStructure} (M : HerbrandModel H) where
  satisfiesClosed : M.satisfiesClauseSet
  minimalClosed : M.isMinimal

def HerbrandModelClosed {H : HerbrandStructure} (M : HerbrandModel H) : Prop :=
  M.satisfiesClauseSet ∧ M.isMinimal

theorem herbrand_model_closed_from_evidence {H : HerbrandStructure} (M : HerbrandModel H) (e : HerbrandEvidence M) : HerbrandModelClosed M := by
  exact And.intro e.satisfiesClosed e.minimalClosed

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse