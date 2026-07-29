import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure InvariantMeasurePackage (X : Type u) [TopologicalSpace X] [AddCommMonoid X] where
  flow : X → ℝ → X
  invariantMeasure : Set X → ℝ
  measurePreserving : Prop
  ergodicity : Prop
  supportContainsOmegaLimit : Prop

structure InvariantMeasureEvidence (X : Type u) [TopologicalSpace X] [AddCommMonoid X] (pkg : InvariantMeasurePackage X) where
  measurePreservingClosed : pkg.measurePreserving
  ergodicityClosed : pkg.ergodicity
  supportContainsOmegaLimitClosed : pkg.supportContainsOmegaLimit

def InvariantMeasureClosed (X : Type u) [TopologicalSpace X] [AddCommMonoid X] (pkg : InvariantMeasurePackage X) : Prop :=
  pkg.measurePreserving ∧ pkg.ergodicity ∧ pkg.supportContainsOmegaLimit

theorem invariant_measure_closed_from_evidence (X : Type u) [TopologicalSpace X] [AddCommMonoid X] (pkg : InvariantMeasurePackage X) (ev : InvariantMeasureEvidence X pkg) : InvariantMeasureClosed X pkg :=
  And.intro ev.measurePreservingClosed (And.intro ev.ergodicityClosed ev.supportContainsOmegaLimitClosed)

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse