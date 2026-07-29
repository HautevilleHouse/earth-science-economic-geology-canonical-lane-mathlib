import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure MineralDepositModel where
  depositType : String
  formationProcess : String
  oreMineralogy : List String
  gradeTonnageModel : Prop
  geochemicalSignature : Prop

structure MineralDepositModelEvidence (M : MineralDepositModel) where
  gradeTonnageModelClosed : M.gradeTonnageModel
  geochemicalSignatureClosed : M.geochemicalSignature

def MineralDepositModelClosed (M : MineralDepositModel) : Prop :=
  M.gradeTonnageModel ∧ M.geochemicalSignature

theorem mineral_deposit_model_closed_from_evidence (M : MineralDepositModel)
    (E : MineralDepositModelEvidence M) : MineralDepositModelClosed M := by
  exact And.intro E.gradeTonnageModelClosed E.geochemicalSignatureClosed

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse