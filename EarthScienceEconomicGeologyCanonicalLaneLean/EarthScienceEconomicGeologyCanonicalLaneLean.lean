import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure AdmittedReservoir where
  reservoirName : String
  porosity : ℝ
  permeability : ℝ
  rockType : String
  depth : ℝ
  temperature : ℝ
  pressure : ℝ

def reservoirAdmissible (A : AdmittedReservoir) : Prop :=
  A.porosity > 0 ∧ A.permeability > 0 ∧ A.depth > 0

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse