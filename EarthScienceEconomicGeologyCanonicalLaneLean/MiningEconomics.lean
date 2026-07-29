import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure MiningEconomicsPackage where
  miningCost : Prop
  processingCost : Prop
  metalPrice : Prop
  netPresentValue : Prop

def MiningEconomicsClosed (M : MiningEconomicsPackage) : Prop :=
  M.miningCost ∧ M.processingCost ∧ M.metalPrice ∧ M.netPresentValue

structure MiningEconomicsEvidence (M : MiningEconomicsPackage) where
  miningCostClosed : M.miningCost
  processingCostClosed : M.processingCost
  metalPriceClosed : M.metalPrice
  netPresentValueClosed : M.netPresentValue

theorem mining_economics_closed_from_evidence (M : MiningEconomicsPackage) (E : MiningEconomicsEvidence M) : MiningEconomicsClosed M := by
  exact And.intro E.miningCostClosed (And.intro E.processingCostClosed (And.intro E.metalPriceClosed E.netPresentValueClosed))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse
