import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeothermalGradientPackage (A : AdmissibleClass) where
  measuredTemperatureProfile : Prop
  thermalConductivityModel : Prop
  heatProductionRate : Prop
  basalHeatFlow : Prop
  gradientComputed : Prop

structure GeothermalGradientEvidence {A : AdmissibleClass} (G : GeothermalGradientPackage A) where
  measuredTemperatureProfileClosed : G.measuredTemperatureProfile
  thermalConductivityModelClosed : G.thermalConductivityModel
  heatProductionRateClosed : G.heatProductionRate
  basalHeatFlowClosed : G.basalHeatFlow
  gradientComputedClosed : G.gradientComputed

def GeothermalGradientClosed {A : AdmissibleClass} (G : GeothermalGradientPackage A) : Prop :=
  G.measuredTemperatureProfile ∧ G.thermalConductivityModel ∧ G.heatProductionRate ∧
  G.basalHeatFlow ∧ G.gradientComputed

theorem geothermal_gradient_closed_from_evidence {A : AdmissibleClass} (G : GeothermalGradientPackage A) (E : GeothermalGradientEvidence G) :
    GeothermalGradientClosed G := by
  exact And.intro E.measuredTemperatureProfileClosed
    (And.intro E.thermalConductivityModelClosed
      (And.intro E.heatProductionRateClosed
        (And.intro E.basalHeatFlowClosed E.gradientComputedClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse