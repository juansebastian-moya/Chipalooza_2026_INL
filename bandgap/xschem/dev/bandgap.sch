v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 410 -420 490 -420 {lab=#net1}
N 570 -510 570 -450 {lab=VDD}
N 370 -510 530 -510 {lab=VDD}
N 370 -510 370 -450 {lab=VDD}
N 530 -510 570 -510 {lab=VDD}
N 490 -420 530 -420 {lab=#net1}
N 510 -370 570 -370 {lab=#net1}
N 510 -420 510 -370 {lab=#net1}
N 570 -390 570 -370 {lab=#net1}
N 430 -180 430 -130 {lab=VB0}
N 370 0 570 0 {lab=VSET}
N 270 100 570 100 {lab=VSS}
N 570 -20 570 0 {lab=VSET}
N 570 0 570 20 {lab=VSET}
N 570 80 570 100 {lab=VSS}
N 410 -130 430 -130 {lab=VB0}
N 430 -130 450 -130 {lab=VB0}
N 230 -510 230 -450 {lab=VDD}
N 230 -510 370 -510 {lab=VDD}
N 230 -310 370 -310 {lab=VB0}
N 130 -430 130 -420 {lab=#net2}
N 130 -420 190 -420 {lab=#net2}
N 130 -510 130 -490 {lab=VDD}
N 130 -510 230 -510 {lab=VDD}
N 160 100 270 100 {lab=VSS}
N 160 10 160 100 {lab=VSS}
N 100 10 100 100 {lab=VSS}
N 100 100 160 100 {lab=VSS}
N 80 -460 90 -460 {lab=VSS}
N 80 100 100 100 {lab=VSS}
N 80 -510 130 -510 {lab=VDD}
N 130 10 130 100 {lab=VSS}
N 570 -130 620 -130 {lab=VSS}
N 620 -130 620 100 {lab=VSS}
N 570 100 620 100 {lab=VSS}
N 330 -130 370 -130 {lab=VSS}
N 330 -130 330 100 {lab=VSS}
N 130 -460 140 -460 {lab=VDD}
N 140 -510 140 -460 {lab=VDD}
N 230 -420 240 -420 {lab=VDD}
N 240 -510 240 -420 {lab=VDD}
N 360 -420 370 -420 {lab=VDD}
N 360 -510 360 -420 {lab=VDD}
N 570 -420 580 -420 {lab=VDD}
N 580 -510 580 -420 {lab=VDD}
N 570 -510 580 -510 {lab=VDD}
N 370 -240 370 -220 {lab=VB0}
N 370 -240 430 -240 {lab=VB0}
N 430 -240 430 -180 {lab=VB0}
N 80 -460 80 100 {lab=VSS}
N 130 -420 130 -30 {lab=#net2}
N 570 -240 570 -220 {lab=PB1}
N 370 -220 370 -160 {lab=VB0}
N 570 -220 570 -160 {lab=PB1}
N 370 -100 370 -80 {lab=#net3}
N 370 -20 370 -0 {lab=VSET}
N 370 -320 370 -310 {lab=VB0}
N 370 -390 370 -380 {lab=#net4}
N 370 -310 370 -240 {lab=VB0}
N 230 -390 230 -380 {lab=#net5}
N 230 -320 230 -310 {lab=VB0}
N 570 -100 570 -90 {lab=#net6}
N 500 -90 570 -90 {lab=#net6}
N 500 -90 500 -80 {lab=#net6}
N 500 -20 500 -10 {lab=#net7}
N 500 -10 550 -10 {lab=#net7}
N 550 -80 550 -10 {lab=#net7}
N 550 -80 570 -80 {lab=#net7}
N 570 -370 570 -360 {lab=#net1}
N 570 -300 570 -270 {lab=PB1}
N 570 -270 570 -240 {lab=PB1}
N 530 -210 530 -130 {lab=#net8}
N 510 -270 530 -270 {lab=VBG}
N 510 -270 510 -180 {lab=VBG}
N 510 -180 510 -130 {lab=VBG}
C {res.sym} 570 -50 0 0 {name=R0
value=1.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 570 50 0 0 {name=R1
value=7.6k
footprint=1206
device=resistor
m=1}
C {res.sym} 480 -130 3 1 {name=R2
value=R_VAR
footprint=1206
device=resistor
m=1}
C {iopin.sym} 80 100 2 0 {name=p1 lab=VSS}
C {iopin.sym} 80 -510 2 0 {name=p3 lab=VDD}
C {iopin.sym} 570 -270 2 1 {name=p4 lab=PB1}
C {symbols/npn_10p00x10p00.sym} 550 -130 0 0 {name=Q1
model=npn_10p00x10p00
spiceprefix=X
m=12}
C {symbols/npn_10p00x10p00.sym} 390 -130 0 1 {name=Q0
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} 130 -10 1 0 {name=M4
L=1u
W=19u
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
C {symbols/pfet_03v3.sym} 110 -460 0 0 {name=M2
L=10u
W=1u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 210 -420 0 0 {name=M3
L=2u
W=2u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 550 -420 0 0 {name=M1
L=7.4u
W=20u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 390 -420 0 1 {name=M0
L=7.4u
W=20u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 510 -180 0 1 {name=p2 lab=VBG}
C {lab_wire.sym} 430 -240 0 1 {name=p5 sig_type=std_logic lab=VB0}
C {lab_wire.sym} 390 0 2 1 {name=p6 sig_type=std_logic lab=VSET}
C {vsource.sym} 370 -50 0 0 {name=VQ0E value=0 savecurrent=false}
C {vsource.sym} 370 -350 0 0 {name=VM0D value=0 savecurrent=false}
C {vsource.sym} 230 -350 0 0 {name=VM3D value=0 savecurrent=false}
C {vsource.sym} 500 -50 0 0 {name=VQ1E value=0 savecurrent=false}
C {vsource.sym} 570 -330 0 0 {name=VM1D value=0 savecurrent=false}
C {vsource.sym} 530 -240 0 0 {name=VQ1B value=0 savecurrent=false}
