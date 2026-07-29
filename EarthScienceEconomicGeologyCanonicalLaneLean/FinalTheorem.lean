import EarthScienceEconomicGeologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

def ConstrainedEconomicGeologyClosure (A : AdmittedReservoir) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economic_geology_endgame (A : AdmittedReservoir) (h : reservoirAdmissible A) : ConstrainedEconomicGeologyClosure A := by
  exact And.intro (bridge_from_reservoir A h) (gate_from_admissible_class A h)

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse