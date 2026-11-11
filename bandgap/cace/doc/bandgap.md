# bandgap

- Description: Bandgap voltage reference
- PDK: gf180mcuD

## Authorship

- Designer: Carlos Lisboa
- Created: November 4, 2026
- Company: None
- Last modified: None
- License: None

## Pins

- VDD
  + Description: Power supply
  + Type: power
  + Direction: inout
  + Vmin: 4.5
  + Vmax: 5.5
- VSS
  + Description: Ground
  + Type: ground
  + Direction: inout
  + Vmin: 0
  + Vmax: 0
- VBG
  + Description: Bandgap reference output
  + Type: signal
  + Direction: output
- PB1
  + Description: Auxiliary voltage output
  + Type: signal
  + Direction: output

## Default Conditions

- vdd
  + Description: Supply voltage
  + Display: VDD
  + Unit: V
  + Minimum: 4.5
  + Typical: 5.0
  + Maximum: 5.5
- temperature
  + Description: Temperature
  + Display: Temperature
  + Unit: °C
  + Minimum: -40
  + Typical: 27
  + Maximum: 125
- corner
  + Description: Process corner
  + Display: Corner
  + Typical: tt

## Symbol

![Symbol of bandgap](bandgap_symbol.svg)

## Schematic

![Schematic of bandgap](bandgap_schematic.svg)
