import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure ReservoirPackage where
  formation : Type u
  porosity : Prop
  permeability : Prop
  fluidSaturation : Prop
  reservoirPressure : Prop

def ReservoirClosed (R : ReservoirPackage) : Prop :=
  R.porosity ∧ R.permeability ∧ R.fluidSaturation ∧ R.reservoirPressure

structure ReservoirEvidence (R : ReservoirPackage) where
  porosityClosed : R.porosity
  permeabilityClosed : R.permeability
  fluidSaturationClosed : R.fluidSaturation
  reservoirPressureClosed : R.reservoirPressure

theorem reservoir_closed_from_evidence (R : ReservoirPackage) (E : ReservoirEvidence R) : ReservoirClosed R := by
  exact And.intro E.porosityClosed (And.intro E.permeabilityClosed (And.intro E.fluidSaturationClosed E.reservoirPressureClosed))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse
