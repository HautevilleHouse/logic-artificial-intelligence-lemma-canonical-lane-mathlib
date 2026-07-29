import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure SymbolicReasoningPackage where
  symbolicSystem : Type u
  inferenceEngine : Type v
  ruleSet : Prop
  derivabilityRelation : Prop
  soundness : Prop
  completeness : Prop
  terminationGuarantee : Prop

structure SymbolicReasoningEvidence (S : SymbolicReasoningPackage) where
  ruleSetClosed : S.ruleSet
  derivabilityRelationClosed : S.derivabilityRelation
  soundnessClosed : S.soundness
  completenessClosed : S.completeness
  terminationGuaranteeClosed : S.terminationGuarantee

def SymbolicReasoningClosed (S : SymbolicReasoningPackage) : Prop :=
  S.ruleSet ∧ S.derivabilityRelation ∧ S.soundness ∧ S.completeness ∧ S.terminationGuarantee

theorem symbolic_reasoning_closed_from_evidence (S : SymbolicReasoningPackage) (E : SymbolicReasoningEvidence S) :
    SymbolicReasoningClosed S := by
  exact And.intro E.ruleSetClosed (And.intro E.derivabilityRelationClosed (And.intro E.soundnessClosed (And.intro E.completenessClosed E.terminationGuaranteeClosed)))

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse