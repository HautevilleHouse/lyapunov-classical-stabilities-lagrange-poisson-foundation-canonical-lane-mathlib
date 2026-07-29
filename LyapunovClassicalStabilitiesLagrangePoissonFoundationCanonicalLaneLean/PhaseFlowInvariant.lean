import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovLagrangePoissonFoundation

structure PhaseFlowInvariantPackage where
  phaseSpace : Type u
  timeDomain : Type v
  flow : timeDomain → phaseSpace → phaseSpace
  invariantSet : Set phaseSpace
  forwardInvariant : Prop
  backwardInvariant : Prop

structure PhaseFlowInvariantEvidence (F : PhaseFlowInvariantPackage) where
  forwardInvariantClosed : F.forwardInvariant
  backwardInvariantClosed : F.backwardInvariant

def PhaseFlowInvariantClosed (F : PhaseFlowInvariantPackage) : Prop :=
  F.forwardInvariant ∧ F.backwardInvariant

theorem phase_flow_invariant_closed_from_evidence (F : PhaseFlowInvariantPackage)
    (E : PhaseFlowInvariantEvidence F) : PhaseFlowInvariantClosed F := by
  exact And.intro E.forwardInvariantClosed E.backwardInvariantClosed

end LyapunovLagrangePoissonFoundation
end HautevilleHouse