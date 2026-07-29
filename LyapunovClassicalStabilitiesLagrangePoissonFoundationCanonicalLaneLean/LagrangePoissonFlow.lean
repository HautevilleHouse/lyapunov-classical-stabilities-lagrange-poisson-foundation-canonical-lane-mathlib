import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean.LyapunovStabilityPackage

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LagrangePoissonFlowPackage where
  vectorField : Type u
  integralCurve : Type v
  hamiltonian : Type w
  poissonStructure : Prop
  invarianceProperty : Prop

structure LagrangePoissonFlowEvidence (F : LagrangePoissonFlowPackage) where
  poissonStructureClosed : F.poissonStructure
  invariancePropertyClosed : F.invarianceProperty

def LagrangePoissonFlowClosed (F : LagrangePoissonFlowPackage) : Prop :=
  F.poissonStructure ∧ F.invarianceProperty

theorem lagrange_poisson_flow_closed_from_evidence (F : LagrangePoissonFlowPackage)
    (E : LagrangePoissonFlowEvidence F) : LagrangePoissonFlowClosed F := by
  exact And.intro E.poissonStructureClosed E.invariancePropertyClosed

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse