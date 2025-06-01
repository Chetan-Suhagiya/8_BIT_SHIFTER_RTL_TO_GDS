`timescale 1ns/1ns
`include "shifter_rtl.v"

module testbench;
    reg Clock;
    reg [7:0] data_in;
    reg [2:0] shift_amt;
    reg dir;
    wire [7:0] data_out;

    shifter dut (
        .Clock(Clock),
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    always #5 Clock = ~Clock;

    initial begin
        $fsdbDumpvars();

        Clock <= 0;
        data_in <= 0;
        shift_amt <= 0;
        dir <= 0;

        #12 data_in <= 8'b10101010; shift_amt <= 3'd1; dir <= 0;
        #10 data_in <= 8'b10101010; shift_amt <= 3'd2; dir <= 1;
        #10 data_in <= 8'b11110000; shift_amt <= 3'd3; dir <= 0;
        #10 data_in <= 8'b00001111; shift_amt <= 3'd1; dir <= 1;

        #10 data_in <= 8'b00000001; shift_amt <= 3'd7; dir <= 0;
        #10 data_in <= 8'b10000000; shift_amt <= 3'd7; dir <= 1;
        #10 data_in <= 8'b11111111; shift_amt <= 3'd0; dir <= 0;
        #10 data_in <= 8'b11111111; shift_amt <= 3'd0; dir <= 1;
        #10 data_in <= 8'b00010001; shift_amt <= 3'd4; dir <= 0;
        #10 data_in <= 8'b00010001; shift_amt <= 3'd4; dir <= 1;
        #10 data_in <= 8'b01010101; shift_amt <= 3'd6; dir <= 1;
        #10 data_in <= 8'b01010101; shift_amt <= 3'd6; dir <= 0;

        #50 $finish;
    end
endmodule

