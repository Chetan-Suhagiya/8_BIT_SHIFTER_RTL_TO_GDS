`timescale 1ns/1ns
`include "shifter_rtl.v"

module testbench;
    reg Clock;
    reg [7:0] data_in;
    reg [2:0] shift_amt;
    reg dir;
    wire [7:0] data_out;

    // Instantiate DUT
    shifter_8bit dut (
        .Clock(Clock),
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    // Clock generation
    always #5 Clock = ~Clock; // 10ns period = 100 MHz

    initial begin
        $fsdbDumpfile("shifter.fsdb");
        $fsdbDumpvars();
        $fsdbDumpMDA;

        Clock <= 0;
        data_in <= 0;
        shift_amt <= 0;
        dir <= 0;

        // Apply stimuli
        #12 data_in <= 8'b10101010; shift_amt <= 3'd1; dir <= 0;
        #10 data_in <= 8'b10101010; shift_amt <= 3'd2; dir <= 1;
        #10 data_in <= 8'b11110000; shift_amt <= 3'd3; dir <= 0;
        #10 data_in <= 8'b00001111; shift_amt <= 3'd1; dir <= 1;

        #50 $finish;
    end
endmodule
