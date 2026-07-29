import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure TheoremProver {KB : KnowledgeBase} {IE : InferenceEngine} where
  searchStrategy : Type
  proofSearchComplete : Prop
  proofVerificationSound : Prop
  proofOutputCorrect : Prop

structure TheoremProverEvidence {KB : KnowledgeBase} {IE : InferenceEngine} (TP : TheoremProver) where
  proofSearchCompleteClosed : TP.proofSearchComplete
  proofVerificationSoundClosed : TP.proofVerificationSound
  proofOutputCorrectClosed : TP.proofOutputCorrect

def TheoremProverClosed {KB : KnowledgeBase} {IE : InferenceEngine} (TP : TheoremProver) : Prop :=
  TP.proofSearchComplete ∧ TP.proofVerificationSound ∧ TP.proofOutputCorrect

theorem theorem_prover_closed_from_evidence {KB : KnowledgeBase} {IE : InferenceEngine} (TP : TheoremProver) (E : TheoremProverEvidence TP) :
    TheoremProverClosed TP := by
  exact And.intro E.proofSearchCompleteClosed (And.intro E.proofVerificationSoundClosed E.proofOutputCorrectClosed)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse