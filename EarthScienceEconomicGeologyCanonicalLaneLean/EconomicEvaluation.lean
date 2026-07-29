import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure EconomicEvaluationPackage where
  commodityPrice : Float
  operatingCost : Float
  capitalCost : Float
  discountRate : Float
  netPresentValue : Float
  internalRateOfReturn : Float

structure EconomicEvaluationEvidence (E : EconomicEvaluationPackage) where
  pricePositive : E.commodityPrice > 0
  costPositive : E.operatingCost > 0 ∧ E.capitalCost > 0
  discountRateValid : E.discountRate ≥ 0 ∧ E.discountRate ≤ 1
  npvCalculated : E.netPresentValue ≠ 0 ∨ E.internalRateOfReturn > E.discountRate

def EconomicEvaluationClosed (E : EconomicEvaluationPackage) : Prop :=
  E.commodityPrice > 0 ∧ E.operatingCost > 0 ∧ E.capitalCost > 0 ∧
  E.discountRate ≥ 0 ∧ E.discountRate ≤ 1 ∧
  (E.netPresentValue ≠ 0 ∨ E.internalRateOfReturn > E.discountRate)

theorem economic_evaluation_closed_from_evidence (E : EconomicEvaluationPackage)
    (Ev : EconomicEvaluationEvidence E) : EconomicEvaluationClosed E := by
  exact And.intro Ev.pricePositive
    (And.intro Ev.costPositive.1
      (And.intro Ev.costPositive.2
        (And.intro Ev.discountRateValid.1
          (And.intro Ev.discountRateValid.2 Ev.npvCalculated))))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse