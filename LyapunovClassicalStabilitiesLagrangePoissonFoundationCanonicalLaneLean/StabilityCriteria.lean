import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure StabilityCriteria where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  equilibriumPoint : phaseSpace
  stabilityType : Prop
  criteriaApplied : Prop
  result : Prop

structure StabilityCriteriaEvidence (C : StabilityCriteria) where
  stabilityTypeClosed : C.stabilityType
  criteriaAppliedClosed : C.criteriaApplied
  resultClosed : C.result

def StabilityCriteriaClosed (C : StabilityCriteria) : Prop :=
  C.stabilityType ∧ C.criteriaApplied ∧ C.result

theorem stability_criteria_closed_from_evidence (C : StabilityCriteria) (E : StabilityCriteriaEvidence C) :
    StabilityCriteriaClosed C := by
  exact And.intro E.stabilityTypeClosed (And.intro E.criteriaAppliedClosed E.resultClosed)

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse