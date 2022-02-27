# 4 Stage Dickson Charge Pump using 28nm CMOS Technology
This repository presents the design of 4 Stage Dickson Charge Pump implemented using Synopsis Custom Compiler on 28nm CMOS Technology.

## Table of Contents
- [Abstract](#abstract)
- [Reference Circuit Details](#reference-circuit-details)
  - [Reference Circuit Diagram](#reference-circuit-diagram)
  - [Reference Circuit Waveform](#reference-circuit-waveform)
- [Tools Used](#tools-used)
- [Simulation in Synopsys](#simulation-in-synopsys)
  * [Schematic](#schematic)
  * [Parameters set for Voltage Source for Input](#parameters-set-for-voltage-source-for-input)
  * [Parameters set for Pulse Voltage Source for Clock 1](#parameters-set-for-pulse-voltage-source-for-clock-1)
  * [Parameters set for Pulse Voltage Source for Clock 1](#parameters-set-for-pulse-voltage-source-for-clock-1)
  * [Transient Settings](#transient-settings)
  * [Netlist](#netlist)
  * [Simulation Results](#simulation-results)
- [Observations](#observations)
- [Limitations](#limitations)
- [References](#references)
- [Acknowledgements](#acknowledgements)
- [Author](#author)


## Abstract
The Dickson Charge Pump is a DC-DC converter that produces a higher voltage than the supply voltage. Dickson charge pump removes the need for large inductors by using MOSFETs as switches. Hence making the circuit small in size and energy-efficient. The Dickson Charge Pump is intended for low-voltage purposes. This circuit is widely implemented in various IC applications, especially in non-volatile memories like the Flash and EEPROM and PLLs.

## Dickson Charge Pump Working
The Dickson Charge Pump is composed of the pumping capacitors arranged in a parallel fashion, which decreases the output impedance and increases the voltage gain as the number of stages increases. In addition to the DC input, the circuit requires a feed of two clock pulse trains with an amplitude swinging between the DC supply rails. These pulse trains are in antiphase. In Dickson Charge Pump, Vdd is the power supply voltage, NMOS transistor acts as switches, and V1 is the node voltage at the upper plate of the capacitor. Two clock sources having the same peak voltage, complementary phase, and non-overlapping, are applied to each stage in an alternative manner.

When the first clock is low, the second clock will be high due to the complementary phase subsequently, the first switch is turned ON, and the first capacitor is charged by the voltage source Vdd to the maximum voltage of Vdd - Vt at node V1. In the next half clock, the first switch turns OFF, and the voltage Vdd provided by the first clock, gets added to the voltage Vdd - Vt that is already present, and as a result, the voltage at node V2 becomes 2Vdd - Vt. Simultaneously the second switch turns ON, and the next capacitor is charged through the second switch by the voltage 2Vdd- Vt, to a maximum voltage of 2Vdd - 2Vt.  The last
capacitor is used to smoothen the output so it doesn’t add any voltage as it is grounded. In this way, the charge is pumped from one stage to another, and the node voltages at pumping capacitors of higher stages increase continuously.


## Reference Circuit Details


### Reference Circuit Diagram

<img src="https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/reference%20images/Dickson%20Charge%20Pump%20Reference%20Circuit.png"/>

### Reference Circuit Waveform

![Output Waveform](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/reference%20images/Dickson%20Charge%20Pump%20Reference%20Output.png)

# Tools Used

- **Synopsys Custom Compiler**:  The Synopsys Custom Compiler™ design environment is a modern solution for full-custom analog, custom digital, and mixed-signal IC design. As the heart of the Synopsys Custom Design Platform, Custom Compiler provides design entry, simulation management and analysis, and custom layout editing features. This tool was used to design the circuit on a transistor level.

- **Synopsys Primewave**:  PrimeWave™ Design Environment is a comprehensive and flexible environment for simulation setup and analysis of analog, RF, mixed-signal design, custom-digital and memory designs within the Synopsys Custom Design Platform. This tool helped in various types of simulations of the above designed circuit.

- **Synopsys 28nm PDK**:  The Synopsys 28nm Process Design Kit(PDK) was used in creation and simulation of the above designed circuit.

# Simulation in Synopsys

## Schematic

### 4 stage Dickson Charge Pump Cell

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/4%20stage%20charge%20pump.png)

The circuit implemented consists of 9 NMOS as 2n+1 NMOS(n is the number of stages) for 4 stages of the pump. It also consists of 8 charging capacitors of 10pF capacitance and a filter capacitor of 1pf capacitance. It consists of 4 pins:- Input, Output, CLK1 and CLK2.


![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/dickson_pump_5stage_pump_cell_symbol.png)

Above shown is the symbol for the charge pump circuit.


### Testbench for Dickson Charge Pump

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/testbench.png)
As shown above Dickson Charge Pump cell, constant DC supply, two pulse DC voltage supplies, a 5000k ohms resistor and appropriate ground terminals are utilized to create a testbench.

## Parameters set for NMOS

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/NMOS%20Properties.png)

## Parameters set for Voltage Source for Input

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/Input%20Supply%20Properties.png)

## Parameters set for Pulse Voltage Source for Clock 1

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/Clock%201%20Properties.png)

## Parameters set for Pulse Voltage Source for Clock 2

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/Clock%202%20Properties.png)

## Transient Settings

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/schematic/Transient%20Settings.png)

## Netlist

### 4 stage Dickson Charge Pump Cell
```
*  Generated for: PrimeSim
*  Design library name: dickson_pump_4stage
*  Design cell name: pump_cell
*  Design view name: schematic
.lib 'saed32nm.lib' TT

*Custom Compiler Version S-2021.09
*Sun Feb 27 16:42:02 2022

.global gnd!
********************************************************************************
* Library          : dickson_pump_4stage
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
c28 net91 clk2 c=1p
c27 net87 clk1 c=1p
c24 net76 clk2 c=1p
c18 output gnd! c=0.1p
c16 net20 clk2 c=1p
c15 net16 clk1 c=1p
c14 net12 clk2 c=1p
c13 net8 clk1 c=1p
c21 net69 clk1 c=1p








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
*  Design library name: dickson_pump_4stage
*  Design cell name: pump_cell_tb
*  Design view name: schematic
.lib 'saed32nm.lib' TT

*Custom Compiler Version S-2021.09
*Sun Feb 27 16:05:59 2022

.global gnd!
********************************************************************************
* Library          : dickson_pump_4stage
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
c28 net91 clk2 c=1p
c27 net87 clk1 c=1p
c24 net76 clk2 c=1p
c18 output gnd! c=0.1p
c16 net20 clk2 c=1p
c15 net16 clk1 c=1p
c14 net12 clk2 c=1p
c13 net8 clk1 c=1p
c21 net69 clk1 c=1p
.ends pump_cell

********************************************************************************
* Library          : dickson_pump_4stage
* Cell             : pump_cell_tb
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
v3 input gnd! dc=1.05
v5 clk2 gnd! dc=0 pulse ( 0 1.05 0 100p 100p 200p 400p )
v4 clk1 gnd! dc=0 pulse ( 1.05 0 0 100p 100p 200p 400p )
r8 output gnd! r=5000k
xi2 clk1 clk2 input output pump_cell








.tran '1ns' '10us' name=tran

.option primesim_remove_probe_prefix = 0
.probe v(*) i(*) level=1
.probe tran v(clk1) v(clk2) v(input) v(output)

.temp 25



.option primesim_output=wdf


.option parhier = LOCAL






.end
```

## Simulation Results

As in the image below the output of the Dickson Charge Pump rises in 1.8us and then saturates at a constant output of 4.39V - 4.4V. The Charge pump converts the input voltage of 1.05v to the output voltage of 4.4V with the Voltage Conversion Ratio (M) around 4.2. The clock signals have a rise and fall time of 1ns. Hence the operating frequency of the circuit is around 1 GHz.

### Output for 2us

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/simulation/4%20stage%20100ps%20rs%201pf%20load%200.1pf%20filter%201p%202us%20alone.png)

### Output for 10us

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/simulation/4%20stage%20100ps%20rs%201pf%20load%200.1pf%20filter%201p%2010us%20alone.png)

### Output with other signals

![image](https://github.com/PatelVatsalB21/Dickson_Charge_Pump_28nm/blob/master/files/images/simulation/4%20stage%20100ps%20rs%201pf%20load%200.1pf%20filter%201p%2010us%20separate%20signals.png)


## Observations
- Output Voltage of the Dickson Charge Pump is **4.4V**.
- Operating Frequency of the charge pump is **1 GHz**.
- Rise Time of the charge pump is **1.8us**.
- Voltage Conversion Ratio (M) of the charge pump is **4.19**.


## Limitations
- As high voltage is passed from one stage to the next stage of pump, it causes a threshold voltage drop. This threshold voltage drop reduces the voltage gain in each stage. Therefore, the conventional Dickson charge pump has low voltage gain
- The threshold voltage of the NMOS transistor increases from the input side to the output side due to the body effect. The body effect further reduces the voltage gain per stage as the number of stage **n** increases. Eventually, the output voltage of the charge pump saturates and does not increase further even more stages are cascaded.

## References
- Design of Analog CMOS Integrated Circuits by Behzad Razavi
- [Analysis and design of dickson charge pump for EEPROM in 180nm CMOS technology](https://ieeexplore.ieee.org/document/8354067)
- [Dynamic_gate_and_substrate_control_charge_pump_circuits_a_review](https://www.researchgate.net/publication/275247649_Dynamic_gate_and_substrate_control_charge_pump_circuits_a_review)
- [A comparative study of charge pumping circuits for flash memory applications](http://dx.doi.org/10.1016/j.microrel.2011.09.031)


## Acknowledgements
- [Kunal Ghosh](https://github.com/kunalg123), Founder, VSD Corp. Pvt. Ltd - kunalpghosh@gmail.com
- [Indian Institute Of Technology (IIT), Hyderabad](https://iith.ac.in/)
- [Synopsys](https://www.synopsys.com/)

## Author
- [Vatsal Patel](https://github.com/patelvatsalb21), Bachelor of Technology in Electronics and Communication Engineering, VGEC
