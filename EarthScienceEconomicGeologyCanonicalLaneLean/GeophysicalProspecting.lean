import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure GeophysicalProspectingPackage where
  seismicSurvey : Prop
  magneticSurvey : Prop
  gravitySurvey : Prop
  geophysicalAnomaly : Prop

def GeophysicalProspectingClosed (G : GeophysicalProspectingPackage) : Prop :=
  G.seismicSurvey ∧ G.magneticSurvey ∧ G.gravitySurvey ∧ G.geophysicalAnomaly

structure GeophysicalProspectingEvidence (G : GeophysicalProspectingPackage) where
  seismicSurveyClosed : G.seismicSurvey
  magneticSurveyClosed : G.magneticSurvey
  gravitySurveyClosed : G.gravitySurvey
  geophysicalAnomalyClosed : G.geophysicalAnomaly

theorem geophysical_prospecting_closed_from_evidence (G : GeophysicalProspectingPackage) (E : GeophysicalProspectingEvidence G) : GeophysicalProspectingClosed G := by
  exact And.intro E.seismicSurveyClosed (And.intro E.magneticSurveyClosed (And.intro E.gravitySurveyClosed E.geophysicalAnomalyClosed))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse
