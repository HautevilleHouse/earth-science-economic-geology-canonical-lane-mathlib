import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure MiningBeneficiationCircuitPackage where
  comminutionModel : Prop
  flotationKinetics : Prop
  denseMediumSeparation : Prop
  leachingRecovery : Prop
  tailingsManagement : Prop
  energyWaterBalance : Prop

structure MiningBeneficiationCircuitEvidence (M : MiningBeneficiationCircuitPackage) where
  comminutionModelClosed : M.comminutionModel
  flotationKineticsClosed : M.flotationKinetics
  denseMediumSeparationClosed : M.denseMediumSeparation
  leachingRecoveryClosed : M.leachingRecovery
  tailingsManagementClosed : M.tailingsManagement
  energyWaterBalanceClosed : M.energyWaterBalance

def MiningBeneficiationCircuitClosed (M : MiningBeneficiationCircuitPackage) : Prop :=
  M.comminutionModel ∧ M.flotationKinetics ∧ M.denseMediumSeparation ∧
  M.leachingRecovery ∧ M.tailingsManagement ∧ M.energyWaterBalance

theorem mining_beneficiation_circuit_closed (M : MiningBeneficiationCircuitPackage)
    (E : MiningBeneficiationCircuitEvidence M) : MiningBeneficiationCircuitClosed M := by
  exact And.intro E.comminutionModelClosed
    (And.intro E.flotationKineticsClosed
      (And.intro E.denseMediumSeparationClosed
        (And.intro E.leachingRecoveryClosed
          (And.intro E.tailingsManagementClosed
            E.energyWaterBalanceClosed))))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse