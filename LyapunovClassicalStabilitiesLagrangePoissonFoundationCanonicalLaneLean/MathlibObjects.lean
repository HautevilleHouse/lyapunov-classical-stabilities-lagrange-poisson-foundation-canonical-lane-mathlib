import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LyapunovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LyapunovAdmittedObject where
  space : LyapunovSpace
  stabilityProperty : Prop
  lyapunovFunctionExists : Prop
  conclusion : stabilityProperty

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.stabilityProperty

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse
