import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeophysicalExplorationPackage where
  seismicReflectivityModel : Prop
  electricalResistivityDistribution : Prop
  gravityAnomalyInversion : Prop
  magneticSusceptibilityMapping : Prop
  electromagneticInduction : Prop
  targetSignatureRecognition : Prop

structure GeophysicalExplorationEvidence (G : GeophysicalExplorationPackage) where
  seismicReflectivityModelClosed : G.seismicReflectivityModel
  electricalResistivityDistributionClosed : G.electricalResistivityDistribution
  gravityAnomalyInversionClosed : G.gravityAnomalyInversion
  magneticSusceptibilityMappingClosed : G.magneticSusceptibilityMapping
  electromagneticInductionClosed : G.electromagneticInduction
  targetSignatureRecognitionClosed : G.targetSignatureRecognition

def GeophysicalExplorationClosed (G : GeophysicalExplorationPackage) : Prop :=
  G.seismicReflectivityModel ∧ G.electricalResistivityDistribution ∧
  G.gravityAnomalyInversion ∧ G.magneticSusceptibilityMapping ∧
  G.electromagneticInduction ∧ G.targetSignatureRecognition

theorem geophysical_exploration_closed (G : GeophysicalExplorationPackage)
    (E : GeophysicalExplorationEvidence G) : GeophysicalExplorationClosed G := by
  exact And.intro E.seismicReflectivityModelClosed
    (And.intro E.electricalResistivityDistributionClosed
      (And.intro E.gravityAnomalyInversionClosed
        (And.intro E.magneticSusceptibilityMappingClosed
          (And.intro E.electromagneticInductionClosed
            E.targetSignatureRecognitionClosed))))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse