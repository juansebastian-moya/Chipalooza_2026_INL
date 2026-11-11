v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 -120 -170 -100 {lab=VSS}
N -90 -120 -90 -100 {lab=VDD}
N -90 -40 -90 -20 {lab=VSS}
N 130 -100 130 -80 {lab=VSS}
N 130 -300 130 -280 {lab=VDD}
N 240 -170 250 -170 {lab=VBG}
N 240 -210 250 -210 {lab=PB1}
N 250 -210 260 -210 {lab=PB1}
N 250 -170 260 -170 {lab=VBG}
N 260 -210 300 -210 {lab=PB1}
N 130 -80 130 -30 {lab=VSS}
N 260 -170 540 -170 {lab=VBG}
N 130 -30 540 -30 {lab=VSS}
N 540 -40 540 -30 {lab=VSS}
N 540 -110 540 -100 {lab=VSS}
N 540 -100 540 -40 {lab=VSS}
C {vsource.sym} -170 -70 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -170 -40 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -170 -120 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {vsource.sym} -90 -70 0 0 {name=VDD value="dc 5 ac 1" savecurrent=false	}
C {lab_wire.sym} -90 -120 2 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -90 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 130 -80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 130 -300 2 1 {name=p7 sig_type=std_logic lab=VDD}
C {code_shown.sym} 650 80 0 0 {name=tran_save only_toplevel=false value=
"
.temp 25
.param R_VAR = 1k
.param var_k = 0
.param var_vth = 0


.control
shell rm -f bandgap_tb_noise_r2_sweep.raw
destroy all
save all

set query_continue = 1
set noaskquit = 1

let r_val = 1k
let step = 5k

while r_val <= 31k

    alterparam R_VAR = $&r_val
    reset

    noise v(VBG) VDD dec 101 1 10000

    setplot noise2
    print onoise_total

    setplot noise1


    let r_val = r_val + step
end

load bandgap_tb_noise_r2_sweep.raw

plot loglog all.onoise_spectrum
.endc
"}
C {lab_wire.sym} 260 -210 0 1 {name=p8 sig_type=std_logic lab=PB1}
C {lab_wire.sym} 260 -170 0 1 {name=p9 sig_type=std_logic lab=VBG}
C {devices/code_shown.sym} 70 70 0 0 {name=MODELS1 only_toplevel=true
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
C {bandgap/xschem/dev/bandgap.sym} 40 -120 0 0 {name=xbgr1}
C {noconn.sym} 300 -210 2 0 {name=l5}
C {capa.sym} 540 -140 0 0 {name=C1
m=1
value=35p
footprint=1206
device="ceramic capacitor"}
