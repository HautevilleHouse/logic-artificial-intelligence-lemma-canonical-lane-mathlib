import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure NeuralNetworkVerificationPackage where
  networkArchitecture : Type u
  activationFunctions : Type v
  trainingData : Prop
  lossFunction : Prop
  convergenceGuarantee : Prop
  adversarialRobustness : Prop

structure NeuralNetworkVerificationEvidence (N : NeuralNetworkVerificationPackage) where
  trainingDataClosed : N.trainingData
  lossFunctionClosed : N.lossFunction
  convergenceGuaranteeClosed : N.convergenceGuarantee
  adversarialRobustnessClosed : N.adversarialRobustness

def NeuralNetworkVerificationClosed (N : NeuralNetworkVerificationPackage) : Prop :=
  N.trainingData ∧ N.lossFunction ∧ N.convergenceGuarantee ∧ N.adversarialRobustness

theorem neural_network_verification_closed_from_evidence (N : NeuralNetworkVerificationPackage) (E : NeuralNetworkVerificationEvidence N) :
    NeuralNetworkVerificationClosed N := by
  exact And.intro E.trainingDataClosed (And.intro E.lossFunctionClosed (And.intro E.convergenceGuaranteeClosed E.adversarialRobustnessClosed))

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse