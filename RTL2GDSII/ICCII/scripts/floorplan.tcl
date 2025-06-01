set PDK_PATH ./../ref

create_lib -ref_lib $PDK_PATH/lib/ndm/saed32rvt_c.ndm SHIFTER_LIB

read_verilog {./../DC/results/shifter.mapped.v} -library SHIFTER_LIB -design shifter -top shifter

#open the lib and block after saving
open_lib SHIFTER_LIB
open_block SHIFT



#scenario3:
initialize_floorplan -shape L -core_offset 2 -coincident_boundary true
set_individual_pin_constraints -ports [get_ports {A B}] -sides 6
place_pins -self
create_placement -floorplan  -effort medium


save_block
save_lib


#open_lib <lib name>
##open_block <block name>
#
####################################End of Floorplan Scenarios###############################

