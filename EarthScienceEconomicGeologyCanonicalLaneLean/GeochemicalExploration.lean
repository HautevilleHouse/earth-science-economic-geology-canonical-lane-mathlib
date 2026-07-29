import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeochemicalExplorationPackage where
  geochemicalAnomaly : Type u
  pathfinderElements : Type v
  thresholdDefinition : Prop
  backgroundVariation : Prop
  anomalyDetectionRate : Prop
  thresholdDefinitionClosed : thresholdDefinition
  backgroundVariationClosed : backgroundVariation
  anomalyDetectionRateClosed : anomalyDetectionRate

structure GeochemicalExplorationEvidence (G : GeochemicalExplorationPackage) where
  thresholdDefinitionClosed : G.thresholdDefinition
  backgroundVariationClosed : G.backgroundVariation
  anomalyDetectionRateClosed : G.anomalyDetectionRate

def GeochemicalExplorationClosed (G : GeochemicalExplorationPackage) : Prop :=
  G.thresholdDefinition ∧ G.backgroundVariation ∧ G.anomalyDetectionRate

theorem geochemical_exploration_closed_from_evidence (G : GeochemicalExplorationPackage)
    (E : GeochemicalExplorationEvidence G) : GeochemicalExplorationClosed G := by
  exact And.intro E.thresholdDefinitionClosed
    (And.intro E.backgroundVariationClosed E.anomalyDetectionRateClosed)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse