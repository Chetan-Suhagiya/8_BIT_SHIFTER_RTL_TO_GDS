simSetSimulator "-vcssv" -exec "/home/student/RTL2GDSII/rtl/simv" -args "verdi"
debImport "-dbdir" "/home/student/RTL2GDSII/rtl/simv.daidir"
debLoadSimResult /home/student/RTL2GDSII/rtl/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "312" "94" "1024" "518"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {5 9 1 12 4 1}
wvAddSignal -win $_nWave2 "/testbench/Clock" "/testbench/data_in\[7:0\]" \
           "/testbench/shift_amt\[2:0\]" "/testbench/dir" \
           "/testbench/data_out\[7:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvCloseFilterColorizeDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
verdiSetActWin -win $_OneSearch
debExit
