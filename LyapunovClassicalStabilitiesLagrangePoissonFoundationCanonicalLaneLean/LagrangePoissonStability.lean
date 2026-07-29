import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LagrangePoissonStability where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorField : manifold → manifold
  invariantMeasure : Prop
  stableOrbit : Prop
  poissonRecurrence : Prop

structure LagrangePoissonEvidence (C : LagrangePoissonStability) where
  invariantMeasureClosed : C.invariantMeasure
  stableOrbitClosed : C.stableOrbit
  poissonRecurrenceClosed : C.poissonRecurrence

def LagrangePoissonStabilityClosed (C : LagrangePoissonStability) : Prop :=
  C.invariantMeasure ∧ C.stableOrbit ∧ C.poissonRecurrence

theorem lagrange_poisson_stability_closed_from_evidence (C : LagrangePoissonStability) (E : LagrangePoissonEvidence C) :
    LagrangePoissonStabilityClosed C := by
  exact And.intro E.invariantMeasureClosed (And.intro E.stableOrbitClosed E.poissonRecurrenceClosed)

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse