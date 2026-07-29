import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure MiningEconomicAnalysisPackage where
  miningMethod : Type u
  cutOffGrade : Type v
  netPresentValueComputed : Prop
  operatingCostModeled : Prop
  recoveryFactor : Prop
  netPresentValueComputedClosed : netPresentValueComputed
  operatingCostModeledClosed : operatingCostModeled
  recoveryFactorClosed : recoveryFactor

structure MiningEconomicAnalysisEvidence (M : MiningEconomicAnalysisPackage) where
  netPresentValueComputedClosed : M.netPresentValueComputed
  operatingCostModeledClosed : M.operatingCostModeled
  recoveryFactorClosed : M.recoveryFactor

def MiningEconomicAnalysisClosed (M : MiningEconomicAnalysisPackage) : Prop :=
  M.netPresentValueComputed ∧ M.operatingCostModeled ∧ M.recoveryFactor

theorem mining_economic_analysis_closed_from_evidence (M : MiningEconomicAnalysisPackage)
    (E : MiningEconomicAnalysisEvidence M) : MiningEconomicAnalysisClosed M := by
  exact And.intro E.netPresentValueComputedClosed
    (And.intro E.operatingCostModeledClosed E.recoveryFactorClosed)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse