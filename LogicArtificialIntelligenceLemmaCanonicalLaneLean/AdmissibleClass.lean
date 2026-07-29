import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AIAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AIWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse