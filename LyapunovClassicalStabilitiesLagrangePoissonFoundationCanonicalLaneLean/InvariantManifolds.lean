import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean

structure InvariantManifold where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  vectorField : manifold → manifold
  invariantSet : manifold → Prop
  stableManifold : Prop
  unstableManifold : Prop

structure InvariantManifoldEvidence (M : InvariantManifold) where
  stableManifoldClosed : M.stableManifold
  unstableManifoldClosed : M.unstableManifold

def InvariantManifoldClosed (M : InvariantManifold) : Prop :=
  M.stableManifold ∧ M.unstableManifold

theorem invariant_manifold_closed_from_evidence (M : InvariantManifold) (E : InvariantManifoldEvidence M) :
    InvariantManifoldClosed M := by
  exact And.intro E.stableManifoldClosed E.unstableManifoldClosed

end LyapunovClassicalStabilitiesLagrangePoissonFoundationCanonicalLaneLean
end HautevilleHouse