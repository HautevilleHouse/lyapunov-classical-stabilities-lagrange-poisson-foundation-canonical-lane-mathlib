import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LyapunovStabilityPackage where
  system : Type u
  stateSpace : Type v
  equilibrium : stateSpace
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : Prop
  derivativeNonPositive : Prop

structure LyapunovStabilityEvidence (P : LyapunovStabilityPackage) where
  positiveDefiniteClosed : P.positiveDefinite
  derivativeNonPositiveClosed : P.derivativeNonPositive

def LyapunovStabilityClosed (P : LyapunovStabilityPackage) : Prop :=
  P.positiveDefinite ∧ P.derivativeNonPositive

theorem lyapunov_stability_closed_from_evidence (P : LyapunovStabilityPackage)
    (E : LyapunovStabilityEvidence P) : LyapunovStabilityClosed P := by
  exact And.intro E.positiveDefiniteClosed E.derivativeNonPositiveClosed

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse