import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEconomicGeologyCanonicalLaneLean

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure ResourceEstimationPackage (A : AdmittedReservoir) where
  totalResource : ℝ
  recoverableResource : ℝ
  economicLimit : ℝ

def ResourceEstimationClosed (A : AdmittedReservoir) (E : ResourceEstimationPackage A) : Prop :=
  E.totalResource > 0 ∧ E.recoverableResource > 0 ∧ E.economicLimit > 0

theorem resource_estimation_closed (A : AdmittedReservoir) (E : ResourceEstimationPackage A) (h : reservoirAdmissible A) : ResourceEstimationClosed A E := by
  have hb : bridgeClosed A := bridge_from_reservoir A h
  exact And.intro (by positivity) (And.intro (by positivity) (by positivity))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse