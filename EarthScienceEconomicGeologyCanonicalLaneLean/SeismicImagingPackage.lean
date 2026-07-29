import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure SeismicImagingPackage (A : AdmissibleClass) where
  acquisitionGeometry : Prop
  velocityModel : Prop
  migrationAlgorithm : Prop
  resolutionAnalysis : Prop
  depthConversion : Prop

structure SeismicImagingEvidence {A : AdmissibleClass} (S : SeismicImagingPackage A) where
  acquisitionGeometryClosed : S.acquisitionGeometry
  velocityModelClosed : S.velocityModel
  migrationAlgorithmClosed : S.migrationAlgorithm
  resolutionAnalysisClosed : S.resolutionAnalysis
  depthConversionClosed : S.depthConversion

def SeismicImagingClosed {A : AdmissibleClass} (S : SeismicImagingPackage A) : Prop :=
  S.acquisitionGeometry ∧ S.velocityModel ∧ S.migrationAlgorithm ∧
  S.resolutionAnalysis ∧ S.depthConversion

theorem seismic_imaging_closed_from_evidence {A : AdmissibleClass} (S : SeismicImagingPackage A) (E : SeismicImagingEvidence S) :
    SeismicImagingClosed S := by
  exact And.intro E.acquisitionGeometryClosed
    (And.intro E.velocityModelClosed
      (And.intro E.migrationAlgorithmClosed
        (And.intro E.resolutionAnalysisClosed E.depthConversionClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse