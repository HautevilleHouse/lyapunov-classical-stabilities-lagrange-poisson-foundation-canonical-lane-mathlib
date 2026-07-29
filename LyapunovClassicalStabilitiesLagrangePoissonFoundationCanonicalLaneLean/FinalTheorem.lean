import canonicalLaneMathlib.AdmissibleClass
import LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean.LagrangePoissonBridgeLemmas

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

def ConstrainedLyapunovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lyapunov_endgame (A : AdmissibleClass) :
    ConstrainedLyapunovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse