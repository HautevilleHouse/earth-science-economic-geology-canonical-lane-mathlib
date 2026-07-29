import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure EnvironmentalImpactPackage where
  environmentalAssessment : Type u
  remediationPlan : Type v
  baselineEnvironmentDefined : Prop
  impactPredicted : Prop
  closureCriteria : Prop
  baselineEnvironmentDefinedClosed : baselineEnvironmentDefined
  impactPredictedClosed : impactPredicted
  closureCriteriaClosed : closureCriteria

structure EnvironmentalImpactEvidence (E : EnvironmentalImpactPackage) where
  baselineEnvironmentDefinedClosed : E.baselineEnvironmentDefined
  impactPredictedClosed : E.impactPredicted
  closureCriteriaClosed : E.closureCriteria

def EnvironmentalImpactClosed (E : EnvironmentalImpactPackage) : Prop :=
  E.baselineEnvironmentDefined ∧ E.impactPredicted ∧ E.closureCriteria

theorem environmental_impact_closed_from_evidence (E : EnvironmentalImpactPackage)
    (Ev : EnvironmentalImpactEvidence E) : EnvironmentalImpactClosed E := by
  exact And.intro Ev.baselineEnvironmentDefinedClosed
    (And.intro Ev.impactPredictedClosed Ev.closureCriteriaClosed)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse