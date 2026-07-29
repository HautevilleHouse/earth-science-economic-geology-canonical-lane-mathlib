import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure BasinModelingPDE (A : AdmissibleClass) where
  sedimentTransportEquation : Prop
  compactionLaw : Prop
  heatFlowEquation : Prop
  boundaryConditions : Prop
  numericalScheme : Prop

structure BasinModelingSDEEvidence {A : AdmissibleClass} (B : BasinModelingPDE A) where
  sedimentTransportEquationClosed : B.sedimentTransportEquation
  compactionLawClosed : B.compactionLaw
  heatFlowEquationClosed : B.heatFlowEquation
  boundaryConditionsClosed : B.boundaryConditions
  numericalSchemeClosed : B.numericalScheme

def BasinModelingSDEClosed {A : AdmissibleClass} (B : BasinModelingPDE A) : Prop :=
  B.sedimentTransportEquation ∧ B.compactionLaw ∧ B.heatFlowEquation ∧
  B.boundaryConditions ∧ B.numericalScheme

theorem basin_modeling_pde_closed_from_evidence {A : AdmissibleClass} (B : BasinModelingPDE A) (E : BasinModelingSDEEvidence B) :
    BasinModelingSDEClosed B := by
  exact And.intro E.sedimentTransportEquationClosed
    (And.intro E.compactionLawClosed
      (And.intro E.heatFlowEquationClosed
        (And.intro E.boundaryConditionsClosed E.numericalSchemeClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse