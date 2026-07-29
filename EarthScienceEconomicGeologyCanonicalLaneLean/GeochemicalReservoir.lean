import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeochemicalReservoirPackage where
  reservoirPorosity : Prop
  permeabilityTensor : Prop
  fluidComposition : Prop
  chemicalReactionRates : Prop
  mineralPrecipitationDissolution : Prop
  pressureVolumeTemperatureRelation : Prop

structure GeochemicalReservoirEvidence (G : GeochemicalReservoirPackage) where
  reservoirPorosityClosed : G.reservoirPorosity
  permeabilityTensorClosed : G.permeabilityTensor
  fluidCompositionClosed : G.fluidComposition
  chemicalReactionRatesClosed : G.chemicalReactionRates
  mineralPrecipitationDissolutionClosed : G.mineralPrecipitationDissolution
  pressureVolumeTemperatureRelationClosed : G.pressureVolumeTemperatureRelation

def GeochemicalReservoirClosed (G : GeochemicalReservoirPackage) : Prop :=
  G.reservoirPorosity ∧ G.permeabilityTensor ∧ G.fluidComposition ∧
  G.chemicalReactionRates ∧ G.mineralPrecipitationDissolution ∧
  G.pressureVolumeTemperatureRelation

theorem geochemical_reservoir_closed (G : GeochemicalReservoirPackage)
    (E : GeochemicalReservoirEvidence G) : GeochemicalReservoirClosed G := by
  exact And.intro E.reservoirPorosityClosed
    (And.intro E.permeabilityTensorClosed
      (And.intro E.fluidCompositionClosed
        (And.intro E.chemicalReactionRatesClosed
          (And.intro E.mineralPrecipitationDissolutionClosed
            E.pressureVolumeTemperatureRelationClosed))))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse