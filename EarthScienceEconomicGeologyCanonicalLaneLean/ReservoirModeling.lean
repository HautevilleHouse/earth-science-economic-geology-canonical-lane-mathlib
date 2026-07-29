import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEconomicGeologyCanonicalLaneLean

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure ReservoirModelPackage (A : AdmittedReservoir) where
  porosityModel : A.porosity > 0
  permeabilityModel : A.permeability > 0
  volumeEstimate : ℝ
  recoveryFactor : ℝ

def ReservoirModelClosed (A : AdmittedReservoir) (M : ReservoirModelPackage A) : Prop :=
  M.porosityModel ∧ M.permeabilityModel

theorem reservoir_model_closed (A : AdmittedReservoir) (M : ReservoirModelPackage A) (h : bridgeClosed A) : ReservoirModelClosed A M := by
  exact And.intro M.porosityModel M.permeabilityModel

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse