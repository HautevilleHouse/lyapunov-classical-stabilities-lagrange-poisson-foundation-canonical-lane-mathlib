import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LyapunovExponent where
  baseSpace : Type u
  topology : TopologicalSpace baseSpace
  flow : baseSpace → ℝ → baseSpace
  lyapunovExponent : baseSpace → ℝ
  existsLyapunovExponent : Prop
  regularityCondition : Prop

structure LyapunovExponentEvidence (L : LyapunovExponent) where
  existsLyapunovExponentClosed : L.existsLyapunovExponent
  regularityConditionClosed : L.regularityCondition

def LyapunovExponentClosed (L : LyapunovExponent) : Prop :=
  L.existsLyapunovExponent ∧ L.regularityCondition

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponent) (E : LyapunovExponentEvidence L) :
    LyapunovExponentClosed L := by
  exact And.intro E.existsLyapunovExponentClosed E.regularityConditionClosed

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse