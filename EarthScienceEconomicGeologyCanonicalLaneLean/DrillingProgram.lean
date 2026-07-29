import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure DrillingProgramPackage where
  drillHoles : Nat
  totalMeters : Float
  targetFormation : String
  coreRecoveryRate : Float
  assayResults : Prop

structure DrillingProgramEvidence (D : DrillingProgramPackage) where
  holesPositive : D.drillHoles > 0
  metersPositive : D.totalMeters > 0
  formationDefined : D.targetFormation ≠ ""
  recoveryRateValid : D.coreRecoveryRate ≥ 0 ∧ D.coreRecoveryRate ≤ 100
  assayResultsClosed : D.assayResults

def DrillingProgramClosed (D : DrillingProgramPackage) : Prop :=
  D.drillHoles > 0 ∧ D.totalMeters > 0 ∧ D.targetFormation ≠ "" ∧
  D.coreRecoveryRate ≥ 0 ∧ D.coreRecoveryRate ≤ 100 ∧ D.assayResults

theorem drilling_program_closed_from_evidence (D : DrillingProgramPackage)
    (E : DrillingProgramEvidence D) : DrillingProgramClosed D := by
  exact And.intro E.holesPositive
    (And.intro E.metersPositive
      (And.intro E.formationDefined
        (And.intro E.recoveryRateValid.1
          (And.intro E.recoveryRateValid.2 E.assayResultsClosed))))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse