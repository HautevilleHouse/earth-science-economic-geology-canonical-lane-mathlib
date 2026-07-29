import EarthScienceEconomicGeologyCanonicalLaneLean.ResourceAssessmentBridge

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

def gateClosed (A : AdmittedReservoir) : Prop :=
  A.depth > 0 ∨ A.temperature > 0

theorem gate_from_admissible_class (A : AdmittedReservoir) (h : reservoirAdmissible A) : gateClosed A := by
  exact Or.inl h.right.right

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse