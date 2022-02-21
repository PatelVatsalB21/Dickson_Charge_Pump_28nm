*Custom Compiler Version S-2021.09
*Mon Feb 21 15:58:10 2022

.global gnd!
********************************************************************************
* Library          : dickson_pump_3stage
* Cell             : pump_cell
* View             : schematic
* View Search List : hspice hspiceD cmos.sch cmos_sch schematic veriloga
* View Stop List   : hspice hspiceD veriloga
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
c21 net69 clk1 c=10p
c18 output gnd! c=1p
c16 net20 clk2 c=10p
c15 net16 clk1 c=10p
c14 net12 clk2 c=10p
c13 net8 clk1 c=10p
.ends pump_cell

********************************************************************************
* Library          : dickson_pump_3stage
* Cell             : pump_cell_tb
* View             : schematic
* View Search List : hspice hspiceD cmos.sch cmos_sch schematic veriloga
* View Stop List   : hspice hspiceD veriloga
********************************************************************************
.subckt pump_cell_tb
xi2 clk1 clk2 input output pump_cell
v3 input gnd! dc=1.05
v5 clk2 gnd! dc=0 pulse ( 0 1.05 0 1n 1n 2n 4n )
v4 clk1 gnd! dc=0 pulse ( 1.05 0 0 1n 1n 2n 4n )
r8 output gnd! r=5000k
.ends pump_cell_tb


