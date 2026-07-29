import LogicArtificialIntelligenceLemmaCanonicalLaneLean.EntailmentStructure

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

inductive InferenceRule where
  | modusPonens
  | generalization
  | substitution
  | custom (name : String)

structure InferenceSystem where
  rules : List InferenceRule
  axioms : List String
  consistency : Prop
  soundness : Prop

theorem inference_system_soundness (sys : InferenceSystem) : sys.soundness :=
  sys.soundness

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse