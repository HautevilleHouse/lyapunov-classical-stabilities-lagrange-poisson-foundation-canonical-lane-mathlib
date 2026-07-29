import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LyapunovStabilityPackage where
  phaseSpace : Type u
  vectorField : phaseSpace → phaseSpace
  equilibriumPoint : phaseSpace
  lyapunovFunction : phaseSpace → ℝ
  positiveDefinite : Prop
  derivativeNegativeSemidefinite : Prop
  stabilityConcluded : Prop

structure LyapunovStabilityEvidence (L : LyapunovStabilityPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNegativeSemidefiniteClosed : L.derivativeNegativeSemidefinite
  stabilityConcludedClosed : L.stabilityConcluded

def LyapunovStabilityClosed (L : LyapunovStabilityPackage) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegativeSemidefinite ∧ L.stabilityConcluded

theorem lyapunov_stability_closed_from_evidence (L : LyapunovStabilityPackage)
    (E : LyapunovStabilityEvidence L) : LyapunovStabilityClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.derivativeNegativeSemidefiniteClosed E.stabilityConcludedClosed)

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse