import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyCanonicalLaneLean

structure OreDepositGenesisPackage where
  magmaticHydrothermalFluid : Prop
  metalComplexingLigands : Prop
  temperaturePressureWindow : Prop
  hostRockReactivity : Prop
  precipitationMechanism : Prop
  structuralTrapFormation : Prop

structure OreDepositGenesisEvidence (O : OreDepositGenesisPackage) where
  magmaticHydrothermalFluidClosed : O.magmaticHydrothermalFluid
  metalComplexingLigandsClosed : O.metalComplexingLigands
  temperaturePressureWindowClosed : O.temperaturePressureWindow
  hostRockReactivityClosed : O.hostRockReactivity
  precipitationMechanismClosed : O.precipitationMechanism
  structuralTrapFormationClosed : O.structuralTrapFormation

def OreDepositGenesisClosed (O : OreDepositGenesisPackage) : Prop :=
  O.magmaticHydrothermalFluid ∧ O.metalComplexingLigands ∧
  O.temperaturePressureWindow ∧ O.hostRockReactivity ∧
  O.precipitationMechanism ∧ O.structuralTrapFormation

theorem ore_deposit_genesis_closed (O : OreDepositGenesisPackage)
    (E : OreDepositGenesisEvidence O) : OreDepositGenesisClosed O := by
  exact And.intro E.magmaticHydrothermalFluidClosed
    (And.intro E.metalComplexingLigandsClosed
      (And.intro E.temperaturePressureWindowClosed
        (And.intro E.hostRockReactivityClosed
          (And.intro E.precipitationMechanismClosed
            E.structuralTrapFormationClosed))))

end EarthScienceEconomicGeologyCanonicalLaneLean
end HautevilleHouse