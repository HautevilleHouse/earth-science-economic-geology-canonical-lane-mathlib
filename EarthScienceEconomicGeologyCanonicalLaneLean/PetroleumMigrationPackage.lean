import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure PetroleumMigrationPackage (A : AdmissibleClass) where
  sourceRockMaturation : Prop
  primaryMigrationMechanism : Prop
  secondaryMigrationPathway : Prop
  trapFormationTiming : Prop
  sealIntegrity : Prop

structure PetroleumMigrationEvidence {A : AdmissibleClass} (P : PetroleumMigrationPackage A) where
  sourceRockMaturationClosed : P.sourceRockMaturation
  primaryMigrationMechanismClosed : P.primaryMigrationMechanism
  secondaryMigrationPathwayClosed : P.secondaryMigrationPathway
  trapFormationTimingClosed : P.trapFormationTiming
  sealIntegrityClosed : P.sealIntegrity

def PetroleumMigrationClosed {A : AdmissibleClass} (P : PetroleumMigrationPackage A) : Prop :=
  P.sourceRockMaturation ∧ P.primaryMigrationMechanism ∧ P.secondaryMigrationPathway ∧
  P.trapFormationTiming ∧ P.sealIntegrity

theorem petroleum_migration_closed_from_evidence {A : AdmissibleClass} (P : PetroleumMigrationPackage A) (E : PetroleumMigrationEvidence P) :
    PetroleumMigrationClosed P := by
  exact And.intro E.sourceRockMaturationClosed
    (And.intro E.primaryMigrationMechanismClosed
      (And.intro E.secondaryMigrationPathwayClosed
        (And.intro E.trapFormationTimingClosed E.sealIntegrityClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse