import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovLagrangePoissonFoundation

structure LagrangeEquilibriumPackage where
  systemType : Type u
  equilibriumPoint : systemType
  potentialFunctionDefined : Prop
  hessianDefinite : Prop
  linearizationHyperbolic : Prop

structure LagrangeEquilibriumEvidence (L : LagrangeEquilibriumPackage) where
  potentialFunctionDefinedClosed : L.potentialFunctionDefined
  hessianDefiniteClosed : L.hessianDefinite
  linearizationHyperbolicClosed : L.linearizationHyperbolic

def LagrangeEquilibriumClosed (L : LagrangeEquilibriumPackage) : Prop :=
  L.potentialFunctionDefined ∧ L.hessianDefinite ∧ L.linearizationHyperbolic

theorem lagrange_equilibrium_closed_from_evidence (L : LagrangeEquilibriumPackage)
    (E : LagrangeEquilibriumEvidence L) : LagrangeEquilibriumClosed L := by
  exact And.intro E.potentialFunctionDefinedClosed
    (And.intro E.hessianDefiniteClosed E.linearizationHyperbolicClosed)

end LyapunovLagrangePoissonFoundation
end HautevilleHouse