import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure OreDepositModel where
  hostRock : Type u
  alterationZone : Type v
  oreMineralAssemblage : Type w
  depositGeometry : Prop
  gradeTonnageTrend : Prop
  structuralControl : Prop
  depositGeometryClosed : depositGeometry
  gradeTonnageTrendClosed : gradeTonnageTrend
  structuralControlClosed : structuralControl

structure OreDepositEvidence (O : OreDepositModel) where
  depositGeometryClosed : O.depositGeometry
  gradeTonnageTrendClosed : O.gradeTonnageTrend
  structuralControlClosed : O.structuralControl

def OreDepositModelClosed (O : OreDepositModel) : Prop :=
  O.depositGeometry ∧ O.gradeTonnageTrend ∧ O.structuralControl

theorem ore_deposit_model_closed_from_evidence (O : OreDepositModel) (E : OreDepositEvidence O) :
    OreDepositModelClosed O := by
  exact And.intro E.depositGeometryClosed (And.intro E.gradeTonnageTrendClosed E.structuralControlClosed)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse