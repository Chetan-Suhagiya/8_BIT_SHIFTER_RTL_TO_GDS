set report_default_significant_digits 6 
set link_path "/home/student/RTL2GDSII/ref/lib/stdcell_rvt/saed32rvt_tt0p78vn40c.db" 

read_verilog "/home/student/RTL2GDSII/ICCII/results/shifter.routed.v"
link_design
current_design shifter 


read_sdc /home/student/RTL2GDSII/CONSTRAINTS/shifter.sdc 

read_parasitics "./../ICCII/results/shifter_func::nom.spef.p1_125.spef"

update_timing -full

report_timing
report_design

check_timing -verbose > /home/student/RTL2GDSII/PT/reports/check_timing/check_timing.p1_report
report_global_timing > /home/student/RTL2GDSII/PT/reports/timing/report_global_timing.p1_report
report_clock -skew -attribute > /home/student/RTL2GDSII/PT/reports/clock/report_clock.p1_report
report_analysis_coverage > /home/student/RTL2GDSII/PT/reports/analysis_coverage/report_analysis_coverage.p1_report
report_timing -slack_lesser_than 0.0 -delay min_max -nosplit -input -net  > /home/student/RTL2GDSII/PT/reports/timing/report_timing.p1_report



