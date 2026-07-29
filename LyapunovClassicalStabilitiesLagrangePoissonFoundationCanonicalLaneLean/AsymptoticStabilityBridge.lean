import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovLagrangePoissonFoundation

structure AsymptoticStabilityPackage where
  equilibrium : Type u
  domainOfAttraction : Set equilibrium
  stabilityType : String
  attractivity : Prop
  rateOfConvergence : Prop

structure AsymptoticStabilityEvidence (A : AsymptoticStabilityPackage) where
  attractivityClosed : A.attractivity
  rateOfConvergenceClosed : A.rateOfConvergence

def AsymptoticStabilityClosed (A : AsymptoticStabilityPackage) : Prop :=
  A.attractivity ∧ A.rateOfConvergence

theorem asymptotic_stability_closed_from_evidence (A : AsymptoticStabilityPackage)
    (E : AsymptoticStabilityEvidence A) : AsymptoticStabilityClosed A := by
  exact And.intro E.attractivityClosed E.rateOfConvergenceClosed

end LyapunovLagrangePoissonFoundation
end HautevilleHouse