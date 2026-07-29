import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeophysicalTargetingPackage where
  geophysicalSurvey : Type u
  inversionModel : Type v
  targetAnomalyDefined : Prop
  resolutionEstimate : Prop
  depthPenetration : Prop
  targetAnomalyDefinedClosed : targetAnomalyDefined
  resolutionEstimateClosed : resolutionEstimate
  depthPenetrationClosed : depthPenetration

structure GeophysicalTargetingEvidence (G : GeophysicalTargetingPackage) where
  targetAnomalyDefinedClosed : G.targetAnomalyDefined
  resolutionEstimateClosed : G.resolutionEstimate
  depthPenetrationClosed : G.depthPenetration

def GeophysicalTargetingClosed (G : GeophysicalTargetingPackage) : Prop :=
  G.targetAnomalyDefined ∧ G.resolutionEstimate ∧ G.depthPenetration

theorem geophysical_targeting_closed_from_evidence (G : GeophysicalTargetingPackage)
    (E : GeophysicalTargetingEvidence G) : GeophysicalTargetingClosed G := by
  exact And.intro E.targetAnomalyDefinedClosed
    (And.intro E.resolutionEstimateClosed E.depthPenetrationClosed)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse