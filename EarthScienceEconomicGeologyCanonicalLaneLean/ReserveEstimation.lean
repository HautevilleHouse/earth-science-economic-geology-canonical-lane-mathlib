import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure ReserveEstimationPackage where
  resourceClassification : String
  tonnageEstimate : Float
  gradeEstimate : Float
  cutoffGrade : Float
  economicFeasibility : Prop

structure ReserveEstimationEvidence (R : ReserveEstimationPackage) where
  resourceClassificationClosed : R.resourceClassification = "Measured" ∨ R.resourceClassification = "Indicated" ∨ R.resourceClassification = "Inferred"
  tonnageGradePositive : R.tonnageEstimate > 0 ∧ R.gradeEstimate > 0
  cutoffGradePositive : R.cutoffGrade > 0
  economicFeasibilityClosed : R.economicFeasibility

def ReserveEstimationClosed (R : ReserveEstimationPackage) : Prop :=
  (R.resourceClassification = "Measured" ∨ R.resourceClassification = "Indicated" ∨ R.resourceClassification = "Inferred") ∧
  R.tonnageEstimate > 0 ∧ R.gradeEstimate > 0 ∧
  R.cutoffGrade > 0 ∧ R.economicFeasibility

theorem reserve_estimation_closed_from_evidence (R : ReserveEstimationPackage)
    (E : ReserveEstimationEvidence R) : ReserveEstimationClosed R := by
  exact And.intro E.resourceClassificationClosed
    (And.intro (And.intro (E.tonnageGradePositive.1) (E.tonnageGradePositive.2))
      (And.intro E.cutoffGradePositive E.economicFeasibilityClosed))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse