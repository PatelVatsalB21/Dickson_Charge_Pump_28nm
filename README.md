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

### 5 stage Dickson Charge Pump Cell

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/dickson_pump_5stage_pump_cell_schematic.png)
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/dickson_pump_5stage_pump_cell_symbol.png)

### Testbench for Dickson Charge Pump

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/schematic/Testbench%20Circuit.png)

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

### 5 stage Dickson Charge Pump Cell
```
*  Generated for: PrimeSim
*  Design library name: dickson_pump_3stage
*  Design cell name: pump_cell
*  Design view name: schematic
.lib 'saed32nm.lib' TT

*Custom Compiler Version S-2021.09
*Tue Feb 22 07:27:38 2022

.global gnd!
********************************************************************************
* Library          : dickson_pump_3stage
* Cell             : pump_cell
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
xm26 output net91 net91 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm25 net91 net87 net87 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm22 net87 net76 net76 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm20 net76 net69 net69 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm4 net69 net20 net20 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm3 net20 net16 net16 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm2 net16 net12 net12 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm1 net12 net8 net8 gnd! n105 w=3.5u l=30n nf=1 m=1
xm0 net8 input input gnd! n105 w=3.5u l=30n nf=1 m=1
c28 net91 clk2 c=10p
c27 net87 clk1 c=10p
c24 net76 clk2 c=10p
c18 output gnd! c=1p
c16 net20 clk2 c=10p
c15 net16 clk1 c=10p
c14 net12 clk2 c=10p
c13 net8 clk1 c=10p
c21 net69 clk1 c=10p








.tran '1ns' '1us' name=tran

.option primesim_remove_probe_prefix = 0
.probe v(*) i(*) level=1
.probe tran v(clk1) v(clk2) v(input) v(output)

.temp 25



.option primesim_output=wdf


.option parhier = LOCAL






.end
```
### Testbench for Dickson Charge Pump
```
*  Generated for: PrimeSim
*  Design library name: dickson_pump_3stage
*  Design cell name: pump_cell_tb
*  Design view name: schematic
.lib 'saed32nm.lib' TT

*Custom Compiler Version S-2021.09
*Tue Feb 22 07:22:44 2022

.global gnd!
********************************************************************************
* Library          : dickson_pump_3stage
* Cell             : pump_cell
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt pump_cell clk1 clk2 input output
xm26 output net91 net91 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm25 net91 net87 net87 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm22 net87 net76 net76 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm20 net76 net69 net69 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm4 net69 net20 net20 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm3 net20 net16 net16 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm2 net16 net12 net12 gnd! n105 w=3.5u l=0.03u nf=1 m=1
xm1 net12 net8 net8 gnd! n105 w=3.5u l=30n nf=1 m=1
xm0 net8 input input gnd! n105 w=3.5u l=30n nf=1 m=1
c28 net91 clk2 c=10p
c27 net87 clk1 c=10p
c24 net76 clk2 c=10p
c18 output gnd! c=1p
c16 net20 clk2 c=10p
c15 net16 clk1 c=10p
c14 net12 clk2 c=10p
c13 net8 clk1 c=10p
c21 net69 clk1 c=10p
.ends pump_cell

********************************************************************************
* Library          : dickson_pump_3stage
* Cell             : pump_cell_tb
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
xi2 clk1 clk2 input output pump_cell
v3 input gnd! dc=1.05
v5 clk2 gnd! dc=0 pulse ( 0 1.05 0 1n 1n 2n 4n )
v4 clk1 gnd! dc=0 pulse ( 1.05 0 0 1n 1n 2n 4n )
r8 output gnd! r=5000k








.tran '1ns' '100us' name=tran

.option primesim_remove_probe_prefix = 0
.probe v(*) i(*) level=1
.probe tran v(clk1) v(clk2) v(input) v(output)

.temp 25



.option primesim_output=wdf


.option parhier = LOCAL






.end
```

## Simulation Results

### Output for 5us
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/simulation/5%20stage%20pump%201ns%20rs%2010pf%20load%201pf%20cap%20alone%205us.png)

### Output for 20us
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/simulation/5%20stage%20pump%201ns%20rs%2010pf%20load%201pf%20cap%20alone.png)

### Output with other signals
![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/main/files/images/simulation/5%20stage%20pump%201ns%20rs%2010pf%20load%201pf%20cap%20separate.png)
