import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure NeuralSymbolicInterface {KB : KnowledgeBase} {IE : InferenceEngine} where
  embeddingFromFactsToVectors : Type
  symbolicReasoningToNeural : Prop
  neuralInferenceToSymbolic : Prop
  consistencyBetweenModes : Prop

structure NeuralSymbolicInterfaceEvidence {KB : KnowledgeBase} {IE : InferenceEngine}
    (NSI : NeuralSymbolicInterface) where
  embeddingFromFactsToVectorsClosed : NSI.embeddingFromFactsToVectors
  symbolicReasoningToNeuralClosed : NSI.symbolicReasoningToNeural
  neuralInferenceToSymbolicClosed : NSI.neuralInferenceToSymbolic
  consistencyBetweenModesClosed : NSI.consistencyBetweenModes

def NeuralSymbolicInterfaceClosed {KB : KnowledgeBase} {IE : InferenceEngine}
    (NSI : NeuralSymbolicInterface) : Prop :=
  NSI.symbolicReasoningToNeural ∧ NSI.neuralInferenceToSymbolic ∧ NSI.consistencyBetweenModes

theorem neural_symbolic_interface_closed_from_evidence {KB : KnowledgeBase} {IE : InferenceEngine}
    (NSI : NeuralSymbolicInterface) (E : NeuralSymbolicInterfaceEvidence NSI) :
    NeuralSymbolicInterfaceClosed NSI := by
  exact And.intro E.symbolicReasoningToNeuralClosed (And.intro E.neuralInferenceToSymbolicClosed E.consistencyBetweenModesClosed)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse