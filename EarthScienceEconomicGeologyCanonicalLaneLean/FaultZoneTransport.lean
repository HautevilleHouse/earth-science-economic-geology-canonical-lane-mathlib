import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure FaultZoneTransportPackage where
  fractureNetworkConductivity : Prop
  reactiveTransportCoefficients : Prop
  thermalGradientEffect : Prop
  soluteRetardation : Prop
  faultSealCapacity : Prop

structure FaultZoneTransportEvidence (F : FaultZoneTransportPackage) where
  fractureNetworkConductivityClosed : F.fractureNetworkConductivity
  reactiveTransportCoefficientsClosed : F.reactiveTransportCoefficients
  thermalGradientEffectClosed : F.thermalGradientEffect
  soluteRetardationClosed : F.soluteRetardation
  faultSealCapacityClosed : F.faultSealCapacity

def FaultZoneTransportClosed (F : FaultZoneTransportPackage) : Prop :=
  F.fractureNetworkConductivity ∧ F.reactiveTransportCoefficients ∧
  F.thermalGradientEffect ∧ F.soluteRetardation ∧ F.faultSealCapacity

theorem fault_zone_transport_closed (F : FaultZoneTransportPackage)
    (E : FaultZoneTransportEvidence F) : FaultZoneTransportClosed F := by
  exact And.intro E.fractureNetworkConductivityClosed
    (And.intro E.reactiveTransportCoefficientsClosed
      (And.intro E.thermalGradientEffectClosed
        (And.intro E.soluteRetardationClosed E.faultSealCapacityClosed)))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse