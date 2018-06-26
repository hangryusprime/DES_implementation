
module load_SOUT_register (clk,TestMode,SOUT, SOUT_Parallel);

input SOUT,clk,TestMode;
wire SOUT,TestMode;
output [1:512] SOUT_Parallel;
reg [1:512] SOUT_Parallel;

always @(posedge clk) begin
 if(TestMode == 1) begin
  SOUT_Parallel <= { SOUT_Parallel[2:512],SOUT};
  end
  else begin
  SOUT_Parallel <=  512'b0;
  end
 end
endmodule
