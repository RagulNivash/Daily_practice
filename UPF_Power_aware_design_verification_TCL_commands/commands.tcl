set_scope dut

create_power_domain PD_dut\
-include_scope

create_power_domain PD_cpu\
-elements {cpu}

create_power_domain PD_video
-elements{video}

create_power_domain PD_cpuB
-elements {cpu/B1 cpu/B2}

create_power_domain PD_videoHash/
-elements {video/Bh2 video Bh3}
//////////////////////////////////////////////////////////////////////////////
create_supply_net VDD_H -domain PD_cpu
create_supply_net VDD_H -domaiin PD_cupB -reuse
create_supply_net VDD_L -doamin PD_video

create_supply_port VDD_H -domain PD_cpu\
-direction <in/out/inout>

connect_supply_net VDD_H -ports VDD_H

create_supply_port VDD_H -ports PD-cpu
create_supply_port VSS -ports PD_cpu
create_supply_port VSS -doamin PD_video

create_supply_port Vint -domain PD_cpu -direction output
create_supply_port VInt -domain PD_video

create_supply_net VDD_H -domaain PD_cpu
create_supply_net Vint -domain PD_cpu
create_supply_net Vint -domain PD_video -reuse

connect_supply_net VDD_H -ports VDD_H
connect-supply_net Vint -porst Vint
/////////////////////////////////////////////////////////////////////////////////////

#supply sets

create_supply_set SS_1\
-function {power}\
-function {ground}\
-function {nwell}

set_isolation isolation_cpu_op -domain PD_cpu
            -applies_to outputs


/////////////////////////////////////////////////////////////
#power switch

set  pg_en dut.pmu.pg_en
create_power_switch psw_vdd_h_gated -domain pd_cpu\
-output_supply_port "VCCOUT Vdd_h_gated"
-input_supply_portm "VCCIN Vdd_h"
-on_state "ON VCCIN EN"
-off_state "OFF !EN"
-control_port "EN $pg-en"
 
//////////////////////////////////////////////////////////////////////////////
#power state table

add_port_state VDD_C -state {c_on 1.0}\
-state{c_off off}

add_port_state vdd_v -state{v_on 1.2}\
-state {v_off off}

add_port_state vdd_d -state{d_on 0.8}\
-state{d_off off}

create_pst TOP_PST -supplies{VDD_C VDD_V VDD_D}
add_pst_state ALLOFF -pst TOP_PST -state{c_off V_OFF D_OFF}
add_pst_state LOWP_1 -pst TOP_PST -state{C_ON V_OFF D_OFF}
add_pst_state LowP2 -pst TOP_PST -state{C_ON V_ON D_OFF}
add_pst_state ALL_ON -pst TOP_PST -state{C_ON V_ON D_ON}

///////////////////////////////////////////////////////////////////////////////////////////
#Level Shifters
set_level_shifter LS_CPU_VIDEO\
-domain PD_CPU\
-applies_to outputs\
-location self

//////////////////////////////////////////////////////////////////////////////////

#isolation cells

set_isolation iso_cpu_video\
-domain <domain_name>\
-applies_to outputs
-clamp_value <0\1\latch\z>\
-isolation_signal <isolation_enable>\
-isolation_sense low\high
-location self

set_isolation_control iso_cpu_video\
-isolation_signal<>\
-isolation_sense<>\
-location self


set_isolation iso_cpu_video\
-domain<>
-clmap_value 0\
-isolation_signal<>\
-isolation_sense low
-elements {list of elements}



-excluse_elements{}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////










