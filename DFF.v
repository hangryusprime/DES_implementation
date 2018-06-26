
module DFF(clk,TestMode,SIN_DFF,RDFF,S_OUTDFF);
    input clk,TestMode,SIN_DFF;
	 input [32:1]RDFF;
	 output S_OUTDFF;
	 reg [32:1]Reg_nxtR;
  //  wire	[1:512] SIPO; 
	assign S_OUTDFF = (TestMode == 1)? Reg_nxtR[32]:1'bz;
	//assign SIPO = { S_OUTDFF , SIPO[1:511]};
	always@(posedge clk) begin
	
	     if(TestMode == 0) begin
		        Reg_nxtR <= RDFF;
		  end
		  else   begin
		        Reg_nxtR <= {Reg_nxtR[31:1],SIN_DFF};
		  end
    end          

endmodule
