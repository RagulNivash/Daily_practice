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

