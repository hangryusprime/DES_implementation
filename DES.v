   
module DES(clk, plaintext, ScanIn, key, decrypt, ciphertext, TestMode, ScanOut, SOUT);
	
	input [64:1] plaintext, key, ScanIn;
   input decrypt, clk, TestMode;
  output [64:1] ciphertext; 	
   output [1:512] ScanOut;
	output SOUT;
    wire clk, TestMode, SIN2, SIN3, SIN4, SIN5, SIN6, SIN7, SIN8, SIN9, SIN10, SIN11, SIN12, SIN13, SIN14, SIN15, SIN16,
       	S_OUT1, S_OUT2, S_OUT3, S_OUT4, S_OUT5, S_OUT6, S_OUT7, S_OUT8, S_OUT9, S_OUT10, S_OUT11, S_OUT12,
			S_OUT13, S_OUT14, S_OUT15, S_OUT16, SOUT;
    wire [48:1] k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, k16;
    wire [32:1] L0, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16,
	        	 R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16;
	 wire [64:1] mux_out;
	 
	 assign mux_out= (TestMode == 1)? ScanIn:plaintext;
	 
	 InPermutation in_per(mux_out, L0, R0);
    RoundKeyGen subkey(key, decrypt, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, k16); 
    OutPermutation out_per(L16, R16, ciphertext);
	 
	 assign  L1 =  R0;
    assign  L2 =  R1;
    assign  L3 =  R2;
    assign  L4 =  R3;
    assign  L5 =  R4;
    assign  L6 =  R5;
    assign  L7 =  R6;
    assign  L8 =  R7;
    assign  L9 =  R8;
    assign L10 =  R9;
    assign L11 = R10;
    assign L12 = R11;
    assign L13 = R12;
    assign L14 = R13;
    assign L15 = R14;
    assign L16 = R15;
	 assign SIN2 = (TestMode==1) ? S_OUT1 : 1'bz;
	 assign SIN3 = (TestMode==1) ? S_OUT2 : 1'bz;
	 assign SIN4 = (TestMode==1) ? S_OUT3 : 1'bz;
	 assign SIN5 = (TestMode==1) ? S_OUT4 : 1'bz;
	 assign SIN6 = (TestMode==1) ? S_OUT5 : 1'bz;
	 assign SIN7 = (TestMode==1) ? S_OUT6 : 1'bz;
	 assign SIN8 = (TestMode==1) ? S_OUT7 : 1'bz;
	 assign SIN9 = (TestMode==1) ? S_OUT8 : 1'bz;
	 assign SIN10 = (TestMode==1) ? S_OUT9 : 1'bz;
	 assign SIN11 = (TestMode==1) ? S_OUT10 : 1'bz;
	 assign SIN12 = (TestMode==1) ? S_OUT11 : 1'bz;
	 assign SIN13 = (TestMode==1) ? S_OUT12 : 1'bz;
	 assign SIN14 = (TestMode==1) ? S_OUT13 : 1'bz;
	 assign SIN15 = (TestMode==1) ? S_OUT14 : 1'bz;
	 assign SIN16 = (TestMode==1) ? S_OUT15 : 1'bz;
	 assign SOUT = S_OUT16;
	 DFF DFT_r1(clk,TestMode,0,R1,S_OUT1);
    DFF DFT_r2(clk,TestMode,SIN2,R2,S_OUT2);
	 DFF DFT_r3(clk,TestMode,SIN3,R3,S_OUT3);
	 DFF DFT_r4(clk,TestMode,SIN4,R4,S_OUT4);
	 DFF DFT_r5(clk,TestMode,SIN5,R5,S_OUT5);
	 DFF DFT_r6(clk,TestMode,SIN6,R6,S_OUT6);
	 DFF DFT_r7(clk,TestMode,SIN7,R7,S_OUT7);
	 DFF DFT_r8(clk,TestMode,SIN8,R8,S_OUT8);
	 DFF DFT_r9(clk,TestMode,SIN9,R9,S_OUT9);
	 DFF DFT_r10(clk,TestMode,SIN10,R10,S_OUT10);
	 DFF DFT_r11(clk,TestMode,SIN11,R11,S_OUT11);
	 DFF DFT_r12(clk,TestMode,SIN12,R12,S_OUT12);
	 DFF DFT_r13(clk,TestMode,SIN13,R13,S_OUT13);
	 DFF DFT_r14(clk,TestMode,SIN14,R14,S_OUT14);
	 DFF DFT_r15(clk,TestMode,SIN15,R15,S_OUT15);
	 DFF DFT_r16(clk,TestMode,SIN16,R16,S_OUT16);
	  load_SOUT_register   SIPO(clk,TestMode,SOUT, ScanOut);			
    NextRi  r1(.clk(clk), .ki(k1), .Ri(R0), .Li(L0), .Rn(R1));
    NextRi  r2(.clk(clk), .ki(k2), .Ri(R1), .Li(L1), .Rn(R2));
    NextRi  r3(.clk(clk), .ki(k3), .Ri(R2), .Li(L2), .Rn(R3));
	 NextRi  r4(.clk(clk), .ki(k4), .Ri(R3), .Li(L3), .Rn(R4));
	 NextRi  r5(.clk(clk), .ki(k5), .Ri(R4), .Li(L4), .Rn(R5));
	 NextRi  r6(.clk(clk), .ki(k6), .Ri(R5), .Li(L5), .Rn(R6));
	 NextRi  r7(.clk(clk), .ki(k7), .Ri(R6), .Li(L6), .Rn(R7));
	 NextRi  r8(.clk(clk), .ki(k8), .Ri(R7), .Li(L7), .Rn(R8));
	 NextRi  r9(.clk(clk), .ki(k9), .Ri(R8), .Li(L8), .Rn(R9));
	 NextRi r10(.clk(clk), .ki(k10), .Ri(R9), .Li(L9), .Rn(R10));
	 NextRi r11(.clk(clk), .ki(k11), .Ri(R10), .Li(L10), .Rn(R11));
	 NextRi r12(.clk(clk), .ki(k12), .Ri(R11), .Li(L11), .Rn(R12));
	 NextRi r13(.clk(clk), .ki(k13), .Ri(R12), .Li(L12), .Rn(R13));
	 NextRi r14(.clk(clk), .ki(k14), .Ri(R13), .Li(L13), .Rn(R14));
	 NextRi r15(.clk(clk), .ki(k15), .Ri(R14), .Li(L14), .Rn(R15));
	 NextRi r16(.clk(clk), .ki(k16), .Ri(R15), .Li(L15), .Rn(R16));
  	  
endmodule