create_clock -period 2.5 [get_ports Clock]

set_input_delay -max 0.5 -clock Clock [get_ports data_in]
set_input_delay -max 0.5 -clock Clock [get_ports shift_amt]
set_input_delay -max 0.5 -clock Clock [get_ports dir]

set_input_transition 0.5 [get_ports data_in]
set_input_transition 0.5 [get_ports shift_amt]
set_input_transition 0.5 [get_ports dir]

set_output_delay -max 0.5 -clock Clock [get_ports data_out]

set_clock_uncertainty -setup 0.300 [get_clocks Clock]
set_clock_uncertainty -hold 0.100 [get_clocks Clock]
set_max_transition 0.250 [current_design]
set_max_transition -clock_path 0.150 [get_clocks Clock]

