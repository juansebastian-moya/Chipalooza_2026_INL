v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 -150 380 -150 {lab=GND}
N 380 -150 380 -40 {lab=GND}
N 260 -120 260 -40 {lab=GND}
N 170 -150 220 -150 {lab=v_gs}
N 170 -210 170 -150 {lab=v_gs}
N 170 -210 260 -210 {lab=v_gs}
N 260 -230 260 -210 {lab=v_gs}
N 260 -210 260 -180 {lab=v_gs}
N 260 -350 260 -290 {lab=v_dd}
N 100 -350 260 -350 {lab=v_dd}
N 100 -350 100 -210 {lab=v_dd}
N 100 -150 100 -40 {lab=GND}
C {code_shown.sym} 600 70 0 0 {name=SPICE only_toplevel=false value=
"
.temp 27
.control
save all

op

noise v(v_gs) Ibias dec 101 1k 300e9
setplot noise1
plot loglog onoise_spectrum
setplot noise2
print onoise_total

write bandgap_tb.raw
.endc
"}
C {devices/code_shown.sym} 30 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {isource.sym} 260 -260 0 0 {name=Ibias value="dc 20u ac 1"}
C {symbols/nfet_03v3.sym} 240 -150 0 0 {name=M1
L=1u
W=1u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} 260 -40 0 0 {name=l2 lab=GND}
C {gnd.sym} 380 -40 0 0 {name=l3 lab=GND}
C {gnd.sym} 100 -40 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 100 -350 0 0 {name=p4 sig_type=std_logic lab=v_dd}
C {lab_wire.sym} 170 -210 0 0 {name=p5 sig_type=std_logic lab=v_gs}
C {vsource.sym} 100 -180 0 0 {name=V3 value=1.5 savecurrent=false}
