import EarthScienceEconomicGeologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EarthScienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse