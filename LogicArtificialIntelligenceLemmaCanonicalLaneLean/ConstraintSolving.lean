import LogicArtificialIntelligenceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceLemmaCanonicalLaneLean

structure ConstraintSolvingPackage where
  constraintSet : Prop
  solverAlgorithm : Prop
  solutionFound : Prop
  optimalityProof : Prop

structure ConstraintSolvingEvidence (C : ConstraintSolvingPackage) where
  constraintSetClosed : C.constraintSet
  solverClosed : C.solverAlgorithm
  solutionClosed : C.solutionFound
  optimalityClosed : C.optimalityProof

def ConstraintSolvingClosed (C : ConstraintSolvingPackage) : Prop :=
  C.constraintSet ∧ C.solverAlgorithm ∧ C.solutionFound ∧ C.optimalityProof

theorem constraint_solving_closed_from_evidence (C : ConstraintSolvingPackage)
    (E : ConstraintSolvingEvidence C) : ConstraintSolvingClosed C := by
  exact And.intro E.constraintSetClosed (And.intro E.solverClosed
    (And.intro E.solutionClosed E.optimalityClosed))

end LogicArtificialIntelligenceLemmaCanonicalLaneLean
end HautevilleHouse