import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure KnowledgeBase where
  facts : Type u
  rules : Type v
  factsWellFormed : Prop
  rulesSound : Prop
  closureUnderInference : Prop

structure KnowledgeBaseEvidence (KB : KnowledgeBase) where
  factsWellFormedClosed : KB.factsWellFormed
  rulesSoundClosed : KB.rulesSound
  closureUnderInferenceClosed : KB.closureUnderInference

def KnowledgeBaseClosed (KB : KnowledgeBase) : Prop :=
  KB.factsWellFormed ∧ KB.rulesSound ∧ KB.closureUnderInference

theorem knowledge_base_closed_from_evidence (KB : KnowledgeBase) (E : KnowledgeBaseEvidence KB) :
    KnowledgeBaseClosed KB := by
  exact And.intro E.factsWellFormedClosed (And.intro E.rulesSoundClosed E.closureUnderInferenceClosed)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse