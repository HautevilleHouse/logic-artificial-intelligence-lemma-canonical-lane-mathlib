import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure InferenceRulesPackage where
  ruleSet : Type u
  premiseSet : Type v
  conclusionType : Type w
  soundness : Prop
  completeness : Prop

structure InferenceRulesEvidence (I : InferenceRulesPackage) where
  soundnessClosed : I.soundness
  completenessClosed : I.completeness

def InferenceRulesClosed (I : InferenceRulesPackage) : Prop :=
  I.soundness ∧ I.completeness

theorem inference_rules_closed_from_evidence (I : InferenceRulesPackage)
    (E : InferenceRulesEvidence I) : InferenceRulesClosed I := by
  exact And.intro E.soundnessClosed E.completenessClosed

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse