v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}

N -150 -130 -150 -110 {lab=VSS}
N -70 -130 -70 -110 {lab=VDD}
N -70 -50 -70 -30 {lab=VSS}
N 150 -110 150 -90 {lab=VSS}
N 150 -310 150 -290 {lab=VDD}
N 260 -180 270 -180 {lab=VBG}
N 260 -220 270 -220 {lab=PB1}
N 270 -220 280 -220 {lab=PB1}
N 270 -180 280 -180 {lab=VBG}
N 280 -220 320 -220 {lab=PB1}
N 560 -120 560 -40 {lab=VSS}
N 150 -90 150 -40 {lab=VSS}
N 280 -180 560 -180 {lab=VBG}
N 150 -40 560 -40 {lab=VSS}

C {vsource.sym} -150 -80 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -150 -50 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -150 -130 2 1 {name=p1 sig_type=std_logic lab=VSS}

C {vsource.sym} -70 -80 0 0 {name=V2 value=\{4.5\} savecurrent=false}
C {lab_wire.sym} -70 -130 2 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -70 -30 0 0 {name=p3 sig_type=std_logic lab=VSS}

C {lab_wire.sym} 150 -90 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -310 2 1 {name=p5 sig_type=std_logic lab=VDD}

C {bandgap.sym} 60 -130 0 0 {name=x1}

C {lab_wire.sym} 280 -220 0 1 {name=p6 sig_type=std_logic lab=PB1}
C {lab_wire.sym} 280 -180 0 1 {name=p7 sig_type=std_logic lab=VBG}
C {noconn.sym} 320 -220 2 0 {name=l2}

C {capa.sym} 560 -150 0 0 {name=C1
m=1
value=35p
footprint=1206
device="ceramic capacitor"}

C {code_shown.sym} -1040 70 0 0 {name=SPICE only_toplevel=true value="
.temp \{-40\}
.option method=gear

.control
save all
op
print v(VBG)
wrdata bandgap_dc_0.data v(VBG
.endc
"}

C {devices/code_shown.sym} -570 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /home/clisboa/realhome/Documents/gf180/bandgap/cace/netlist/schematic/schematic/bandgap.spice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
