import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovLagrangePoissonFoundation

structure PoissonStabilityPackage where
  orbit : Type u
  limitPointsSet : Set orbit
  periodicOrbit : Prop
  recurrenceProperty : Prop
  closureContainsLimit : Prop

structure PoissonStabilityEvidence (P : PoissonStabilityPackage) where
  periodicOrbitClosed : P.periodicOrbit
  recurrencePropertyClosed : P.recurrenceProperty
  closureContainsLimitClosed : P.closureContainsLimit

def PoissonStabilityClosed (P : PoissonStabilityPackage) : Prop :=
  P.periodicOrbit ∧ P.recurrenceProperty ∧ P.closureContainsLimit

theorem poisson_stability_closed_from_evidence (P : PoissonStabilityPackage)
    (E : PoissonStabilityEvidence P) : PoissonStabilityClosed P := by
  exact And.intro E.periodicOrbitClosed
    (And.intro E.recurrencePropertyClosed E.closureContainsLimitClosed)

end LyapunovLagrangePoissonFoundation
end HautevilleHouse