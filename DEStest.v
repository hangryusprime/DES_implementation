`timescale 1ns / 1ps

module DesTest;

	reg clk;
	reg decrypt;
	reg TestMode;
	reg [64:1] key;
	reg [64:1] plaintext;
	reg [64:1] ScanIn;
	reg [32:1] xor_in;
	
	wire [32:1] Fout1,Fout2,Fout3,Fout4,Fout5,Fout6,Fout7,Fout8,Fout9,Fout10,Fout11,Fout12,Fout13,Fout14,Fout15,Fout16,xor1,xor2;
	wire [1:512] ScanOut;
	wire [64:1] ciphertext;
    wire SOUT;
   
  
	DES uut(
		.clk(clk), 
		.plaintext(plaintext), 
		.ScanIn(ScanIn),  
		.key(key), 
		.decrypt(decrypt), 
		.ciphertext(ciphertext), 
		.TestMode(TestMode),
		.ScanOut(ScanOut),
		.SOUT(SOUT)
	);
	invFeistel uut1(
	.in(xor1),
	.out(Fout1)
	);
	invFeistel uut2(
	.in(xor2),
	.out(Fout2)
	);
	invFeistel uut3(
	.in(ScanOut[417:448]),
	.out(Fout3)
	);
	invFeistel uut4(
	.in(ScanOut[385:416]),
	.out(Fout4)
	);
	invFeistel uut5(
	.in(ScanOut[353:384]),
	.out(Fout5)
	);
	invFeistel uut6(
	.in(ScanOut[321:352]),
	.out(Fout6)
	);
	invFeistel uut7(
	.in(ScanOut[289:320]),
	.out(Fout7)
	);
	invFeistel uut8(
	.in(ScanOut[257:288]),
	.out(Fout8)
	);
	invFeistel uut9(
	.in(ScanOut[225:256]),
	.out(Fout9)
	);
	invFeistel uut10(
	.in(ScanOut[193:224]),
	.out(Fout10)
	);
	invFeistel uut11(
	.in(ScanOut[161:192]),
	.out(Fout11)
	);
	invFeistel uut12(
	.in(ScanOut[129:160]),
	.out(Fout12)
	);
	invFeistel uut13(
	.in(ScanOut[97:128]),
	.out(Fout13)
	);
	invFeistel uut14(
	.in(ScanOut[65:96]),
	.out(Fout14)
	);
	invFeistel uut15(
	.in(ScanOut[33:64]),
	.out(Fout15)
	);
	invFeistel uut16(
	.in(ScanOut[1:32]),
	.out(Fout16)
	);
	xors uut17(
	.a(32'b0),
	.b(ScanOut[481:512]),
	.z(xor1)
	);
	xors uut18(
	.a(xor_in),
	.b(ScanOut[449:480]),
	.z(xor2)
	);
	 
	initial xor_in = 32'b0;
	initial clk = 0;
	initial TestMode = 0;
   initial decrypt = 0;
   initial key = 64'h2120040305192422;        // Key = Alphabetical UTD-CE-SXV
	initial plaintext = 64'h0;                 // Initial Input
	initial ScanIn = plaintext;

	initial #16 TestMode = 1;
	initial #3088 $display("SOUT,SOUTf- R1:%h, R1:%h, R2:%h, R2:%h, R3:%h, R3:%h, R4:%h, R4:%h, R5:%h, R5:%h, R6:%h,R6:%h, R7:%h, R7:%h, R8:%h, R8:%h, R9:%h, R9:%h, R10:%h, R10:%h, R11:%h, R11:%h, R12:%h,R12:%h, R13:%h, R13:%h, R14:%h, R14:%h, R15:%h, R15:%h, R16:%h, R16:%h",
	                        ScanOut[481:512],Fout1,ScanOut[449:480],Fout2,ScanOut[417:448],Fout3,ScanOut[385:416],Fout4,
									ScanOut[353:384],Fout5,ScanOut[321:352],Fout6,ScanOut[289:320],Fout7,ScanOut[257:288],Fout8,
									ScanOut[225:256],Fout9,ScanOut[193:224],Fout10,ScanOut[161:192],Fout11,ScanOut[129:160],Fout12,
									ScanOut[ 97:128],Fout13,ScanOut[ 65: 96],Fout14,ScanOut[ 33: 64],Fout15,ScanOut[  1: 32],Fout16);
	initial #3088 $display("R1(e):%h, R1(c):%h",ScanOut[481:512],Fout1);
	initial #3088 TestMode = 0;
	initial #3088 plaintext = 64'h0000aa000000aa00;  // Second  Input
	initial #3088 ScanIn = plaintext;

   initial #3104 TestMode = 1;
   initial #6176 $display("R1(e):%h, R1(c):%h",ScanOut[481:512],Fout1);
	initial #6176 TestMode = 0;
	initial #6176 plaintext = 64'h000000aa000000aa;  // Third   Input
	initial #6176 ScanIn = plaintext;

	initial #6192 TestMode = 1;
	initial #9264 $display("R1(e):%h, R1(c):%h",ScanOut[481:512],Fout1);
	initial #9264 TestMode = 0;
	initial #9264 plaintext = 64'h1115011141405500;  // Fourth  Input
	initial #9264 ScanIn = plaintext;

	initial #9280 TestMode = 1;
	initial #12352 $display("R2(e):%h, R2(c):%h",ScanOut[449:480],Fout2);
	initial #12352 TestMode = 0;
	initial #12352 plaintext = 64'h1401aa004545be05;  // Fifth  Input
	initial #12352 ScanIn = plaintext;
	initial #12352 xor_in = 32'h44444444;

	initial #12368 TestMode = 1;
	initial #15440 $display("R2(e):%h, R2(c):%h",ScanOut[449:480],Fout2);
	initial #15440 TestMode = 0;
	initial #15440 plaintext = 64'h150041ee011001bf;  // Sixth  Input
	initial #15440 ScanIn = plaintext;
	initial #15440 xor_in = 32'h88888888;

	initial #15456 TestMode = 1;
	initial #18528 $display("R2(e):%h, R2(c):%h",ScanOut[449:480],Fout2);
	initial #18528 TestMode = 0;
	initial #18528 $finish;

always #3 clk=~clk;       
endmodule

