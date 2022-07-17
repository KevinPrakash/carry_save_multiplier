`timescale 1ns / 1ps

module tb();
  reg [7:0] testcase0[1:0];
  wire [15:0] result[7:0];

  csmulti_fullbasecell uut0(testcase0[0], testcase0[1], result[0]);

  initial
    begin
        testcase0[0] = 8'd0;
        testcase0[1] = 8'd0;
        #100
        #100
        $display("%0d x %0d = %0d(%0b)",testcase0[0],testcase0[1],result[0],result[0]);
    end


endmodule //
