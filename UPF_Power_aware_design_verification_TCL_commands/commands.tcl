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
