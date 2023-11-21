###############################################################################
# Created by write_sdc
# Tue Nov 21 11:40:33 2023
###############################################################################
current_design DigitalClock
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 24.0000 
set_clock_uncertainty 0.2500 clk
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {hours[5]}]
set_load -pin_load 0.1900 [get_ports {hours[4]}]
set_load -pin_load 0.1900 [get_ports {hours[3]}]
set_load -pin_load 0.1900 [get_ports {hours[2]}]
set_load -pin_load 0.1900 [get_ports {hours[1]}]
set_load -pin_load 0.1900 [get_ports {hours[0]}]
set_load -pin_load 0.1900 [get_ports {hours_oeb[5]}]
set_load -pin_load 0.1900 [get_ports {hours_oeb[4]}]
set_load -pin_load 0.1900 [get_ports {hours_oeb[3]}]
set_load -pin_load 0.1900 [get_ports {hours_oeb[2]}]
set_load -pin_load 0.1900 [get_ports {hours_oeb[1]}]
set_load -pin_load 0.1900 [get_ports {hours_oeb[0]}]
set_load -pin_load 0.1900 [get_ports {minutes[5]}]
set_load -pin_load 0.1900 [get_ports {minutes[4]}]
set_load -pin_load 0.1900 [get_ports {minutes[3]}]
set_load -pin_load 0.1900 [get_ports {minutes[2]}]
set_load -pin_load 0.1900 [get_ports {minutes[1]}]
set_load -pin_load 0.1900 [get_ports {minutes[0]}]
set_load -pin_load 0.1900 [get_ports {minutes_oeb[5]}]
set_load -pin_load 0.1900 [get_ports {minutes_oeb[4]}]
set_load -pin_load 0.1900 [get_ports {minutes_oeb[3]}]
set_load -pin_load 0.1900 [get_ports {minutes_oeb[2]}]
set_load -pin_load 0.1900 [get_ports {minutes_oeb[1]}]
set_load -pin_load 0.1900 [get_ports {minutes_oeb[0]}]
set_load -pin_load 0.1900 [get_ports {seconds[5]}]
set_load -pin_load 0.1900 [get_ports {seconds[4]}]
set_load -pin_load 0.1900 [get_ports {seconds[3]}]
set_load -pin_load 0.1900 [get_ports {seconds[2]}]
set_load -pin_load 0.1900 [get_ports {seconds[1]}]
set_load -pin_load 0.1900 [get_ports {seconds[0]}]
set_load -pin_load 0.1900 [get_ports {seconds_oeb[5]}]
set_load -pin_load 0.1900 [get_ports {seconds_oeb[4]}]
set_load -pin_load 0.1900 [get_ports {seconds_oeb[3]}]
set_load -pin_load 0.1900 [get_ports {seconds_oeb[2]}]
set_load -pin_load 0.1900 [get_ports {seconds_oeb[1]}]
set_load -pin_load 0.1900 [get_ports {seconds_oeb[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 4.0000 [current_design]
