import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure ConsistencyCheck {KB : KnowledgeBase} where
  consistencyVerification : Prop
  inconsistencyDetection : Prop
  modelExistence : Prop

structure ConsistencyCheckEvidence {KB : KnowledgeBase} (CC : ConsistencyCheck) where
  consistencyVerificationClosed : CC.consistencyVerification
  inconsistencyDetectionClosed : CC.inconsistencyDetection
  modelExistenceClosed : CC.modelExistence

def ConsistencyCheckClosed {KB : KnowledgeBase} (CC : ConsistencyCheck) : Prop :=
  CC.consistencyVerification ∧ CC.inconsistencyDetection ∧ CC.modelExistence

theorem consistency_check_closed_from_evidence {KB : KnowledgeBase} (CC : ConsistencyCheck) (E : ConsistencyCheckEvidence CC) :
    ConsistencyCheckClosed CC := by
  exact And.intro E.consistencyVerificationClosed (And.intro E.inconsistencyDetectionClosed E.modelExistenceClosed)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse