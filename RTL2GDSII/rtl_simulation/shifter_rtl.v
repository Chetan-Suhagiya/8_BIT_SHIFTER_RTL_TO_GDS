module shifter_8bit (
    input Clock,
    input [7:0] data_in,
    input [2:0] shift_amt,
    input dir, // 0 = left, 1 = right
    output reg [7:0] data_out
);

reg [7:0] shifted;

always @(*) begin
    if (dir == 1'b0)
        shifted = data_in << shift_amt;
    else
        shifted = data_in >> shift_amt;
end

// Register output at positive clock edge
always @(posedge Clock) begin
    data_out <= shifted;
end

endmodule
