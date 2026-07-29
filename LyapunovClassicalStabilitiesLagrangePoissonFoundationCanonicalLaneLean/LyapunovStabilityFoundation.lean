import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure StabilityDomain (X : Type u) [TopologicalSpace X] where
  equilibriumPoint : X
  neighborhood : Set X
  forwardInvariant : Prop
  closedUnderFlow : Prop

structure LyapunovFunction (X : Type u) [TopologicalSpace X] where
  carrier : X → ℝ
  positiveDefinite : Prop
  decreasingAlongFlows : Prop
  continuousAtEquilibrium : Prop

structure LagrangeStabilityConditions (X : Type u) [TopologicalSpace X] [AddCommMonoid X] where
  flowBounded : Prop
  orbitsPrecompact : Prop
  omegaLimitSetNonempty : Prop
  omegaLimitSetInvariant : Prop

def LagrangeStable (X : Type u) [TopologicalSpace X] [AddCommMonoid X] (conds : LagrangeStabilityConditions X) : Prop :=
  conds.flowBounded ∧ conds.orbitsPrecompact ∧ conds.omegaLimitSetNonempty ∧ conds.omegaLimitSetInvariant

structure PoissonStabilityConditions (X : Type u) [TopologicalSpace X] [AddCommMonoid X] where
  recurrentPointsDense : Prop
  nonwanderingSetFull : Prop
  centerOfAttraction : Prop

def PoissonStable (X : Type u) [TopologicalSpace X] [AddCommMonoid X] (conds : PoissonStabilityConditions X) : Prop :=
  conds.recurrentPointsDense ∧ conds.nonwanderingSetFull ∧ conds.centerOfAttraction

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse