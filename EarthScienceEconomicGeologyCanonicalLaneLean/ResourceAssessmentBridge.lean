import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEconomicGeologyCanonicalLaneLean

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

def bridgeClosed (A : AdmittedReservoir) : Prop :=
  A.porosity > 0 ∧ A.permeability > 0

theorem bridge_from_reservoir (A : AdmittedReservoir) (h : reservoirAdmissible A) : bridgeClosed A := by
  exact And.intro h.left h.right.left

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse