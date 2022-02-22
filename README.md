# Dickson Charge Pump using 28nm CMOS Technology
This repository presents the design of 5 stage Dickson Charge Pump implemented using Synopsis Custom Compiler on 28nm CMOS Technology.

## Table of Contents
- [Abstract](#abstract)
- [Reference Circuit Details](#reference-circuit-details)
  - [Reference Circuit Diagram](#reference-circuit-diagram)
  - [Reference Circuit Waveform](#reference-circuit-waveform)
- [Simulation in Synopsys](#simulation-in-synopsys)
  * [Schematic](#schematic)
  * [Parameters set for Voltage Source for Input A](#parameters-set-for-voltage-source-for-input-a)
  * [Parameters set for Voltage Source for Input B](#parameters-set-for-voltage-source-for-input-b)
  * [Transient Settings](#transient-settings)
  * [Netlist](#netlist)
  * [Waveform](#waveform)
- [Challenge](#challenge)
- [Troubleshooting](#troubleshooting)
- [Reproduce_waveforms](#reproduce_waveforms)
- [Limitations](#limitations)
- [References](#references)
- [Acknowledgements](#acknowledgements)
- [Author](#author)


## Abstract
The Dickson Charge Pump is a DC-DC converter that produces a higher voltage than the supply voltage. Dickson charge pump removes the need for large inductors by using MOSFETs as switches. Hence making the circuit small in size and energy-efficient. The Dickson Charge Pump is intended for low-voltage purposes. This circuit is widely implemented in various IC applications, especially in non-volatile memories like the Flash and EEPROM and PLLs.


## Reference Circuit Details


### Reference Circuit Diagram

![Circuit Schematic](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/Dickson%20charge%20pump%20reference%20circuit.png)

### Reference Circuit Waveform

![Output Waveform](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/Dickson%20Charge%20Pump%20Reference%20Output.png)



# Simulation in Synopsys

## Schematic

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/dickson_pump_5stage_pump_cell_schematic.png)
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/dickson_pump_5stage_pump_cell_symbol.png)

## NMOS

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/NMOS.png)
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/NMOS%20Properties.png)

## Capacitor

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Capacitor.png)
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Filter%20Capacitor.png)


## Parameters set for Voltage Source for Input

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Input%20Supply%20Properties.png)

## Parameters set for Pulse Voltage Source for Clock 1

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Clock%201%20Properties.png)


## Parameters set for Pulse Voltage Source for Clock 2
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Clock%202%20Properties.png)

## Transient Settings
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Transient%20Settings.png)

## Netlist
```
```
## Waveform
![image]()
