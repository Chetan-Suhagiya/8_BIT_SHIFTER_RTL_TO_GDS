################################################################################
#
# Design name:  shifter
#
# Created by icc2 write_sdc on Sun Jun  1 01:27:08 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 1
create_clock -name Clock -period 2.5 -waveform {0 1.25} [get_ports {Clock}]
set_propagated_clock [get_clocks {Clock}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 5.72205e-05 [get_clocks {Clock}]
# -origin useful_skew
set_clock_latency -max 6.67572e-05 [get_clocks {Clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty -setup 0.3 [get_clocks {Clock}]
set_clock_uncertainty -hold 0.1 [get_clocks {Clock}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[7]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[6]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[5]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[4]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[3]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[2]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[1]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 7
set_input_transition 0.5 [get_ports {data_in[0]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 8
set_input_transition 0.5 [get_ports {shift_amt[2]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 8
set_input_transition 0.5 [get_ports {shift_amt[1]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 8
set_input_transition 0.5 [get_ports {shift_amt[0]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 9
set_input_transition 0.5 [get_ports {dir}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[7]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[6]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[5]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[4]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[3]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[2]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[1]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_in[0]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 4
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {shift_amt[2]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 4
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {shift_amt[1]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 4
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {shift_amt[0]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {dir}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[7]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[6]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[5]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[4]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[3]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[2]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[1]}]
# /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc, line 11
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {data_out[0]}]
set_max_transition 0.25 [current_design]
set_max_transition 0.15 [get_clocks {Clock}] -clock_path
