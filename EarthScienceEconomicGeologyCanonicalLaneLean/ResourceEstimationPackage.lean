import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure ResourceEstimationPackage (A : AdmissibleClass) where
  geologicalModel : Prop
  cutoffGrade : Prop
  tonnageGradeCurve : Prop
  classificationUncertainty : Prop
  economicViability : Prop

structure ResourceEstimationEvidence {A : AdmissibleClass} (R : ResourceEstimationPackage A) where
  geologicalModelClosed : R.geologicalModel
  cutoffGradeClosed : R.cutoffGrade
  tonnageGradeCurveClosed : R.tonnageGradeCurve
  classificationUncertaintyClosed : R.classificationUncertainty
  economicViabilityClosed : R.economicViability

def ResourceEstimationClosed {A : AdmissibleClass} (R : ResourceEstimationPackage A) : Prop :=
  R.geologicalModel ∧ R.cutoffGrade ∧ R.tonnageGradeCurve ∧
  R.classificationUncertainty ∧ R.economicViability

theorem resource_estimation_closed_from_evidence {A : AdmissibleClass} (R : ResourceEstimationPackage A) (E : ResourceEstimationEvidence R) :
    ResourceEstimationClosed R := by
  exact And.intro E.geologicalModelClosed
    (And.intro E.cutoffGradeClosed
      (And.intro E.tonnageGradeCurveClosed
        (And.intro E.classificationUncertaintyClosed E.economicViabilityClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse