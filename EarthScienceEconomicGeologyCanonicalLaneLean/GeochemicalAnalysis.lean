import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeochemicalAnalysisPackage where
  geochemicalSurvey : Prop
  elementConcentration : Prop
  pathfinderElements : Prop
  geochemicalAnomaly : Prop

def GeochemicalAnalysisClosed (G : GeochemicalAnalysisPackage) : Prop :=
  G.geochemicalSurvey ∧ G.elementConcentration ∧ G.pathfinderElements ∧ G.geochemicalAnomaly

structure GeochemicalAnalysisEvidence (G : GeochemicalAnalysisPackage) where
  geochemicalSurveyClosed : G.geochemicalSurvey
  elementConcentrationClosed : G.elementConcentration
  pathfinderElementsClosed : G.pathfinderElements
  geochemicalAnomalyClosed : G.geochemicalAnomaly

theorem geochemical_analysis_closed_from_evidence (G : GeochemicalAnalysisPackage) (E : GeochemicalAnalysisEvidence G) : GeochemicalAnalysisClosed G := by
  exact And.intro E.geochemicalSurveyClosed (And.intro E.elementConcentrationClosed (And.intro E.pathfinderElementsClosed E.geochemicalAnomalyClosed))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse
