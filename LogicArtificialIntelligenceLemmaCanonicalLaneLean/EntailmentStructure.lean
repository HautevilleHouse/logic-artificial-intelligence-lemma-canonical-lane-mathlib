import LogicArtificialIntelligenceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure EntailmentStructure (A : AdmissibleClass) where
  formalSystem : Type
  inferenceRules : List (String × String)
  knowledgeBase : List String
  query : String
  proofs : List (List (String × String))
  entailmentChecked : Bool
  soundnessProof : entailmentChecked = true → A.object.entailmentHolds

theorem entailment_structure_sound (A : AdmissibleClass) (E : EntailmentStructure A) :
    E.entailmentChecked → A.object.entailmentHolds := by
  intro h
  exact E.soundnessProof h

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse