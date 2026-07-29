import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure InferenceEngine {KB : KnowledgeBase} where
  inferenceRules : Type
  ruleApplicationSound : Prop
  ruleApplicationComplete : Prop
  engineTermination : Prop

structure InferenceEngineEvidence {KB : KnowledgeBase} (IE : InferenceEngine) where
  ruleApplicationSoundClosed : IE.ruleApplicationSound
  ruleApplicationCompleteClosed : IE.ruleApplicationComplete
  engineTerminationClosed : IE.engineTermination

def InferenceEngineClosed {KB : KnowledgeBase} (IE : InferenceEngine) : Prop :=
  IE.ruleApplicationSound ∧ IE.ruleApplicationComplete ∧ IE.engineTermination

theorem inference_engine_closed_from_evidence {KB : KnowledgeBase} (IE : InferenceEngine) (E : InferenceEngineEvidence IE) :
    InferenceEngineClosed IE := by
  exact And.intro E.ruleApplicationSoundClosed (And.intro E.ruleApplicationCompleteClosed E.engineTerminationClosed)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse