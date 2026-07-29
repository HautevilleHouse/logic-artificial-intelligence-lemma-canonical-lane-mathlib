import canonicalLaneMathlib.AdmissibleClass
import LogicArtificialIntelligenceLemmaCanonicalLaneLean.BridgeLemmas
import LogicArtificialIntelligenceLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

def ConstrainedLogicAIClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lai_endgame (A : AdmissibleClass) :
    ConstrainedLogicAIClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse