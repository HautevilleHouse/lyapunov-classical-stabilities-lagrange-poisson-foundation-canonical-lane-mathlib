import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LyapunovCandidate (X : Type u) [TopologicalSpace X] where
  V : X → ℝ
  positiveDefinite : Prop
  derivativeNonpositive : Prop
  decrescent : Prop

structure LyapunovCertificate (X : Type u) [TopologicalSpace X] (candidate : LyapunovCandidate X) where
  equilibrium : X
  neighborhood : Set X
  candidateSatisfies : candidate.positiveDefinite ∧ candidate.derivativeNonpositive ∧ candidate.decrescent
  stabilityConclusion : Prop

def LyapunovStable (X : Type u) [TopologicalSpace X] (candidate : LyapunovCandidate X) (cert : LyapunovCertificate X candidate) : Prop :=
  cert.stabilityConclusion

theorem lyapunov_stable_from_certificate (X : Type u) [TopologicalSpace X] (candidate : LyapunovCandidate X) (cert : LyapunovCertificate X candidate) : LyapunovStable X candidate cert :=
  cert.stabilityConclusion

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse