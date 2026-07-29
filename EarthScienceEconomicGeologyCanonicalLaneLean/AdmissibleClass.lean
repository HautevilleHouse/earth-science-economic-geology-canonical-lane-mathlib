import EarthScienceEconomicGeologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure AdmissibleClass where
  object : EarthScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EarthScienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse