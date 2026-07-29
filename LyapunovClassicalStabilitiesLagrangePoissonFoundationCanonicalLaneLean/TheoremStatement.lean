import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure LyapunovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LyapunovAdmittedObject where
  space : LyapunovSpace
  dynamicalSystem : Prop
  stabilityProperty : Prop
  conclusion : stabilityProperty

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.stabilityProperty

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse
