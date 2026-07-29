import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeophysicalSurveyPackage where
  method : String
  surveyArea : String
  anomalyDetected : Prop
  targetDepth : Float

def validGeophysicalMethod (m : String) : Prop :=
  m = "Magnetic" ∨ m = "Gravity" ∨ m = "Seismic" ∨ m = "Resistivity" ∨ m = "Electromagnetic"

structure GeophysicalSurveyEvidence (G : GeophysicalSurveyPackage) where
  methodValid : validGeophysicalMethod G.method
  surveyAreaDefined : G.surveyArea ≠ ""
  anomalyDetectedClosed : G.anomalyDetected
  depthPositive : G.targetDepth > 0

def GeophysicalSurveyClosed (G : GeophysicalSurveyPackage) : Prop :=
  validGeophysicalMethod G.method ∧ G.surveyArea ≠ "" ∧ G.anomalyDetected ∧ G.targetDepth > 0

theorem geophysical_survey_closed_from_evidence (G : GeophysicalSurveyPackage)
    (E : GeophysicalSurveyEvidence G) : GeophysicalSurveyClosed G := by
  exact And.intro E.methodValid
    (And.intro E.surveyAreaDefined (And.intro E.anomalyDetectedClosed E.depthPositive))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse