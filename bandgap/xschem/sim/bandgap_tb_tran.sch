v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 40 80 840 480 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
x2=0.87652759
rainbow=0
digital=0
y2=1
y1=0
x1=-0.1234725
vlegend=0
color="6 20 4"
node="vss
vdd
vbg"}
B 2 1680 80 2480 480 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
x2=0.87652759
rainbow=0
digital=0
y2=5
y1=0
x1=-0.1234725
vlegend=0
color="21 7 6 10"
node="xbgr1.vb0
vdd
vss
pb1"}
B 2 40 500 840 900 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0
digital=0
y1=-5u
x1=0.18
vlegend=0
color="8 21 7 5"
node="i(iq0e)
i(iq1e)
i(im0d)
i(im1d)"
y2=20u
x2=0.62}
B 2 1680 500 2480 900 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
x2=0.87652759
rainbow=0
digital=0
y1=-100n
x1=-0.1234725
vlegend=0
color=10
node=i(im3d)
y2=200n}
B 2 860 80 1660 480 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
x2=0.87652759
rainbow=0
digital=0
y2=0.91
y1=0.89
x1=-0.1234725
vlegend=0
color=11
node=vbg}
B 2 860 500 1660 900 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
x2=0.87652759
rainbow=0
digital=0
y1=1.38e-05
x1=-0.1234725
vlegend=0
color="8 21 7 5"
node="i(iq0e)
i(iq1e)
i(im0d)
i(im1d)"
y2=2.03e-05}
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
N 150 -90 150 -40 {lab=VSS}
N 280 -180 560 -180 {lab=VBG}
N 150 -40 560 -40 {lab=VSS}
N 560 -50 560 -40 {lab=VSS}
N 560 -120 560 -110 {lab=VSS}
N 560 -110 560 -50 {lab=VSS}
C {vsource.sym} -150 -80 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -150 -50 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -150 -130 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {vsource.sym} -70 -80 0 0 {name=V2 value="PULSE(0 5 0 1u 1u 100m 200m)" savecurrent=false	}
C {lab_wire.sym} -70 -130 2 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -70 -30 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -90 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -310 2 1 {name=p5 sig_type=std_logic lab=VDD}
C {code_shown.sym} -1180 40 0 0 {name=tran_save only_toplevel=false value=
"
.temp 27
.option method=gear
*.param R0_VAR=1000
.control
save all

tran 1m 1 uic

let ISU = @m.XBGR1.xm3.m0[id]
let IQ0E = i(v.XBGR1.VQ0E)
let IQ1E = i(v.XBGR1.VQ1E)
let IM0D = i(v.XBGR1.VM0D)
let IM1D = i(v.XBGR1.VM1D)
let IM3D = i(v.XBGR1.VM3D)

*let r_val = 1000
*let step = 500
*while r_val <= 2000
*	alterparam R0_VAR=$&r_val
*	reset
*	tran 1m 1
*	let vbg_$&r_val = V(VBG)
*	let r_val = r_val + step
*	remzerovec
*end
*plot tran1.vbg_1000 tran2.vbg_1500 tran3.vbg_2000

write bandgap_tb_tran.raw
.endc
"}
C {lab_wire.sym} 280 -220 0 1 {name=p6 sig_type=std_logic lab=PB1}
C {lab_wire.sym} 280 -180 0 1 {name=p7 sig_type=std_logic lab=VBG}
C {launcher.sym} 100 40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran"
tclcommand="xschem raw_read $netlist_dir/badngap_tb_tran.raw tran"
}
C {devices/code_shown.sym} -590 50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {bandgap/xschem/dev/bandgap.sym} 60 -130 0 0 {name=xbgr1}
C {noconn.sym} 320 -220 2 0 {name=l3}
C {capa.sym} 560 -150 0 0 {name=C1
m=1
value=35p
footprint=1206
device="ceramic capacitor"}
