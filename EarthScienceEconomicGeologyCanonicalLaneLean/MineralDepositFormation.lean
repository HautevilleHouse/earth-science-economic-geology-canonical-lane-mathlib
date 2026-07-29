import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure MineralDepositFormation (A : AdmissibleClass) where
  fluidChemistry : Prop
  precipitationMechanism : Prop
  structuralControl : Prop
  hostRockAlteration : Prop
  gradeDistribution : Prop

structure MineralDepositFormationEvidence {A : AdmissibleClass} (M : MineralDepositFormation A) where
  fluidChemistryClosed : M.fluidChemistry
  precipitationMechanismClosed : M.precipitationMechanism
  structuralControlClosed : M.structuralControl
  hostRockAlterationClosed : M.hostRockAlteration
  gradeDistributionClosed : M.gradeDistribution

def MineralDepositFormationClosed {A : AdmissibleClass} (M : MineralDepositFormation A) : Prop :=
  M.fluidChemistry ∧ M.precipitationMechanism ∧ M.structuralControl ∧
  M.hostRockAlteration ∧ M.gradeDistribution

theorem mineral_deposit_formation_closed_from_evidence {A : AdmissibleClass} (M : MineralDepositFormation A) (E : MineralDepositFormationEvidence M) :
    MineralDepositFormationClosed M := by
  exact And.intro E.fluidChemistryClosed
    (And.intro E.precipitationMechanismClosed
      (And.intro E.structuralControlClosed
        (And.intro E.hostRockAlterationClosed E.gradeDistributionClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse