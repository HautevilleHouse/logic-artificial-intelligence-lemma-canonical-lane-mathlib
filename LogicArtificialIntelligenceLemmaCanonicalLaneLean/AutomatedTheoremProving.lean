import LogicArtificialIntelligenceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure AutomatedTheoremProvingPackage where
  searchAlgorithm : Prop
  heuristicGuidance : Prop
  proofFound : Prop
  terminationProof : Prop

structure AutomatedTheoremProvingEvidence (A : AutomatedTheoremProvingPackage) where
  searchAlgorithmClosed : A.searchAlgorithm
  heuristicClosed : A.heuristicGuidance
  proofFoundClosed : A.proofFound
  terminationClosed : A.terminationProof

def ATPClosed (A : AutomatedTheoremProvingPackage) : Prop :=
  A.searchAlgorithm ∧ A.heuristicGuidance ∧ A.proofFound ∧ A.terminationProof

theorem atp_closed_from_evidence (A : AutomatedTheoremProvingPackage)
    (E : AutomatedTheoremProvingEvidence A) : ATPClosed A := by
  exact And.intro E.searchAlgorithmClosed (And.intro E.heuristicClosed
    (And.intro E.proofFoundClosed E.terminationClosed))

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse