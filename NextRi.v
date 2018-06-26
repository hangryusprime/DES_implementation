
module NextRi(clk, ki, Ri, Li, Rn);

	  input clk;
	  input [32:1] Ri, Li;
     input [48:1] ki;
    output [32:1] Rn;
	 
	   wire [6:1] B1, B2, B3, B4, B5, B6, B7, B8;
		wire [32:1] tmp1, tmp2, Rn;
      wire [48:1] Ei; 
		
       reg [2:1] m1, m2, m3, m4, m5, m6, m7, m8;
       reg [4:1] n1, n2, n3, n4, n5, n6, n7, n8, bs1, bs2, bs3, bs4, bs5, bs6, bs7, bs8;
		 reg [4:1] S1_OUTPUT,S2_OUTPUT,S3_OUTPUT,S4_OUTPUT,S5_OUTPUT,S6_OUTPUT,S7_OUTPUT,S8_OUTPUT;

    assign Ei[48:1] = {
            Ri[33 - 32], Ri[33 -  1], Ri[33 -  2], Ri[33 -  3], Ri[33 -  4], Ri[33 -  5], 
				Ri[33 -  4], Ri[33 -  5], Ri[33 -  6], Ri[33 -  7], Ri[33 -  8], Ri[33 -  9], 
				Ri[33 -  8], Ri[33 -  9], Ri[33 - 10], Ri[33 - 11], Ri[33 - 12], Ri[33 - 13], 
				Ri[33 - 12], Ri[33 - 13], Ri[33 - 14], Ri[33 - 15], Ri[33 - 16], Ri[33 - 17],
            Ri[33 - 16], Ri[33 - 17], Ri[33 - 18], Ri[33 - 19], Ri[33 - 20], Ri[33 - 21], 
				Ri[33 - 20], Ri[33 - 21], Ri[33 - 22], Ri[33 - 23], Ri[33 - 24], Ri[33 - 25], 
				Ri[33 - 24], Ri[33 - 25], Ri[33 - 26], Ri[33 - 27], Ri[33 - 28], Ri[33 - 29], 
				Ri[33 - 28], Ri[33 - 29], Ri[33 - 30], Ri[33 - 31], Ri[33 - 32], Ri[33 -  1]};

    assign {B1, B2, B3, B4, B5, B6, B7, B8} = Ei ^ ki;

always @(*) begin
            m1[2:1] = {B1[6], B1[1]};
            n1[4:1] = B1[5:2];
            bs1[4:1] = S1_OUTPUT;
				case ({m1,n1})
            6'd0: S1_OUTPUT <= 4'hE;6'd1: S1_OUTPUT <= 4'h4;
            6'd2: S1_OUTPUT <= 4'hD;6'd3: S1_OUTPUT <= 4'h1;
            6'd4: S1_OUTPUT <= 4'h2;6'd5: S1_OUTPUT <= 4'hF;
            6'd6: S1_OUTPUT <= 4'hB;6'd7: S1_OUTPUT <= 4'h8;
            6'd8: S1_OUTPUT <= 4'h3;6'd9: S1_OUTPUT <= 4'hA;
            6'd10: S1_OUTPUT <= 4'h6;6'd11: S1_OUTPUT <= 4'hC;
            6'd12: S1_OUTPUT <= 4'h5;6'd13: S1_OUTPUT <= 4'h9;
            6'd14: S1_OUTPUT <= 4'h0;6'd15: S1_OUTPUT <= 4'h7;
            6'd16: S1_OUTPUT <= 4'h0;6'd17: S1_OUTPUT <= 4'hF;
				6'd18: S1_OUTPUT <= 4'h7;6'd19: S1_OUTPUT <= 4'h4;
				6'd20: S1_OUTPUT <= 4'hE;6'd21: S1_OUTPUT <= 4'h2;
				6'd22: S1_OUTPUT <= 4'hD;6'd23: S1_OUTPUT <= 4'h1;
				6'd24: S1_OUTPUT <= 4'hA;6'd25: S1_OUTPUT <= 4'h6;
				6'd26: S1_OUTPUT <= 4'hC;6'd27: S1_OUTPUT <= 4'hB;
				6'd28: S1_OUTPUT <= 4'h9;6'd29: S1_OUTPUT <= 4'h5;
				6'd30: S1_OUTPUT <= 4'h3;6'd31: S1_OUTPUT <= 4'h8;
				6'd32: S1_OUTPUT <= 4'h4;6'd33: S1_OUTPUT <= 4'h1;
				6'd34: S1_OUTPUT <= 4'hE;6'd35: S1_OUTPUT <= 4'h8;
				6'd36: S1_OUTPUT <= 4'hD;6'd37: S1_OUTPUT <= 4'h6;
				6'd38: S1_OUTPUT <= 4'h2;6'd39: S1_OUTPUT <= 4'hB;
				6'd40: S1_OUTPUT <= 4'hF;6'd41: S1_OUTPUT <= 4'hC;
				6'd42: S1_OUTPUT <= 4'h9;6'd43: S1_OUTPUT <= 4'h7;
				6'd44: S1_OUTPUT <= 4'h3;6'd45: S1_OUTPUT <= 4'hA;
				6'd46: S1_OUTPUT <= 4'h5;6'd47: S1_OUTPUT <= 4'h0;
				6'd48: S1_OUTPUT <= 4'hF;6'd49: S1_OUTPUT <= 4'hC;
				6'd50: S1_OUTPUT <= 4'h8;6'd51: S1_OUTPUT <= 4'h2;
				6'd52: S1_OUTPUT <= 4'h4;6'd53: S1_OUTPUT <= 4'h9;
				6'd54: S1_OUTPUT <= 4'h1;6'd55: S1_OUTPUT <= 4'h7;
				6'd56: S1_OUTPUT <= 4'h5;6'd57: S1_OUTPUT <= 4'hB;
				6'd58: S1_OUTPUT <= 4'h3;6'd59: S1_OUTPUT <= 4'hE;
				6'd60: S1_OUTPUT <= 4'hA;6'd61: S1_OUTPUT <= 4'h0;
				6'd62: S1_OUTPUT <= 4'h6;6'd63: S1_OUTPUT <= 4'hD;
				default: S1_OUTPUT <= 4'h0;
				endcase
				end
    always @(*) begin
            m2[2:1] = {B2[6], B2[1]};
            n2[4:1] = B2[5:2];
            bs2[4:1] = S2_OUTPUT;
				case({m2,n2})
				6'd0: S2_OUTPUT <= 4'hF;6'd1: S2_OUTPUT <= 4'h1;
				6'd2: S2_OUTPUT <= 4'h8;6'd3: S2_OUTPUT <= 4'hE;
				6'd4: S2_OUTPUT <= 4'h6;6'd5: S2_OUTPUT <= 4'hB;
				6'd6: S2_OUTPUT <= 4'h3;6'd7: S2_OUTPUT <= 4'h4;
				6'd8: S2_OUTPUT <= 4'h9;6'd9: S2_OUTPUT <= 4'h7;
				6'd10: S2_OUTPUT <= 4'h2;6'd11: S2_OUTPUT <= 4'hD;
				6'd12: S2_OUTPUT <= 4'hC;6'd13: S2_OUTPUT <= 4'h0;
				6'd14: S2_OUTPUT <= 4'h5;6'd15: S2_OUTPUT <= 4'hA;
				6'd16: S2_OUTPUT <= 4'h3;6'd17: S2_OUTPUT <= 4'hD;
				6'd18: S2_OUTPUT <= 4'h4;6'd19: S2_OUTPUT <= 4'h7;
				6'd20: S2_OUTPUT <= 4'hF;6'd21: S2_OUTPUT <= 4'h2;
				6'd22: S2_OUTPUT <= 4'h8;6'd23: S2_OUTPUT <= 4'hE;
				6'd24: S2_OUTPUT <= 4'hC;6'd25: S2_OUTPUT <= 4'h0;
				6'd26: S2_OUTPUT <= 4'h1;6'd27: S2_OUTPUT <= 4'hA;
				6'd28: S2_OUTPUT <= 4'h6;6'd29: S2_OUTPUT <= 4'h9;
				6'd30: S2_OUTPUT <= 4'hB;6'd31: S2_OUTPUT <= 4'h5;
				6'd32: S2_OUTPUT <= 4'h0;6'd33: S2_OUTPUT <= 4'hE;
				6'd34: S2_OUTPUT <= 4'h7;6'd35: S2_OUTPUT <= 4'hB;
				6'd36: S2_OUTPUT <= 4'hA;6'd37: S2_OUTPUT <= 4'h4;
				6'd38: S2_OUTPUT <= 4'hD;6'd39: S2_OUTPUT <= 4'h1;
				6'd40: S2_OUTPUT <= 4'h5;6'd41: S2_OUTPUT <= 4'h8;
				6'd42: S2_OUTPUT <= 4'hC;6'd43: S2_OUTPUT <= 4'h6;
				6'd44: S2_OUTPUT <= 4'h9;6'd45: S2_OUTPUT <= 4'h3;
				6'd46: S2_OUTPUT <= 4'h2;6'd47: S2_OUTPUT <= 4'hF;
				6'd48: S2_OUTPUT <= 4'hD;6'd49: S2_OUTPUT <= 4'h8;
				6'd50: S2_OUTPUT <= 4'hA;6'd51: S2_OUTPUT <= 4'h1;
				6'd52: S2_OUTPUT <= 4'h3;6'd53: S2_OUTPUT <= 4'hF;
				6'd54: S2_OUTPUT <= 4'h4;6'd55: S2_OUTPUT <= 4'h2;
				6'd56: S2_OUTPUT <= 4'hB;6'd57: S2_OUTPUT <= 4'h6;
				6'd58: S2_OUTPUT <= 4'h7;6'd59: S2_OUTPUT <= 4'hC;
				6'd60: S2_OUTPUT <= 4'h0;6'd61: S2_OUTPUT <= 4'h5;
				6'd62: S2_OUTPUT <= 4'hE;6'd63: S2_OUTPUT <= 4'h9;
				default: S2_OUTPUT <= 4'h0;
				endcase
        end
    always @(*) begin
            m3[2:1] = {B3[6], B3[1]};
            n3[4:1] = B3[5:2];
            bs3[4:1] = S3_OUTPUT;
				case({m3,n3})
				6'd0: S3_OUTPUT <= 4'hA;6'd1: S3_OUTPUT <= 4'h0;
				6'd2: S3_OUTPUT <= 4'h9;6'd3: S3_OUTPUT <= 4'hE;
				6'd4: S3_OUTPUT <= 4'h6;6'd5: S3_OUTPUT <= 4'h3;
				6'd6: S3_OUTPUT <= 4'hF;6'd7: S3_OUTPUT <= 4'h5;
				6'd8: S3_OUTPUT <= 4'h1;6'd9: S3_OUTPUT <= 4'hD;
				6'd10: S3_OUTPUT <= 4'hC;6'd11: S3_OUTPUT <= 4'h7;
				6'd12: S3_OUTPUT <= 4'hB;6'd13: S3_OUTPUT <= 4'h4;
				6'd14: S3_OUTPUT <= 4'h2;6'd15: S3_OUTPUT <= 4'h8;
				6'd16: S3_OUTPUT <= 4'hD;6'd17: S3_OUTPUT <= 4'h7;
				6'd18: S3_OUTPUT <= 4'h0;6'd19: S3_OUTPUT <= 4'h9;
				6'd20: S3_OUTPUT <= 4'h3;6'd21: S3_OUTPUT <= 4'h4;
				6'd22: S3_OUTPUT <= 4'h6;6'd23: S3_OUTPUT <= 4'hA;
				6'd24: S3_OUTPUT <= 4'h2;6'd25: S3_OUTPUT <= 4'h8;
				6'd26: S3_OUTPUT <= 4'h5;6'd27: S3_OUTPUT <= 4'hE;
				6'd28: S3_OUTPUT <= 4'hC;6'd29: S3_OUTPUT <= 4'hB;
				6'd30: S3_OUTPUT <= 4'hF;6'd31: S3_OUTPUT <= 4'h1;
				6'd32: S3_OUTPUT <= 4'hD;6'd33: S3_OUTPUT <= 4'h6;
				6'd34: S3_OUTPUT <= 4'h4;6'd35: S3_OUTPUT <= 4'h9;
				6'd36: S3_OUTPUT <= 4'h8;6'd37: S3_OUTPUT <= 4'hF;
				6'd38: S3_OUTPUT <= 4'h3;6'd39: S3_OUTPUT <= 4'h0;
				6'd40: S3_OUTPUT <= 4'hB;6'd41: S3_OUTPUT <= 4'h1;
				6'd42: S3_OUTPUT <= 4'h2;6'd43: S3_OUTPUT <= 4'hC;
				6'd44: S3_OUTPUT <= 4'h5;6'd45: S3_OUTPUT <= 4'hA;
				6'd46: S3_OUTPUT <= 4'hE;6'd47: S3_OUTPUT <= 4'h7;
				6'd48: S3_OUTPUT <= 4'h1;6'd49: S3_OUTPUT <= 4'hA;
				6'd50: S3_OUTPUT <= 4'hD;6'd51: S3_OUTPUT <= 4'h0;
				6'd52: S3_OUTPUT <= 4'h6;6'd53: S3_OUTPUT <= 4'h9;
				6'd54: S3_OUTPUT <= 4'h8;6'd55: S3_OUTPUT <= 4'h7;
				6'd56: S3_OUTPUT <= 4'h4;6'd57: S3_OUTPUT <= 4'hF;
				6'd58: S3_OUTPUT <= 4'hE;6'd59: S3_OUTPUT <= 4'h3;
				6'd60: S3_OUTPUT <= 4'hB;6'd61: S3_OUTPUT <= 4'h5;
				6'd62: S3_OUTPUT <= 4'h2;6'd63: S3_OUTPUT <= 4'hC;
				default: S3_OUTPUT <= 4'h0;
				endcase
        end
    always @(*) begin
            m4[2:1] = {B4[6], B4[1]};
            n4[4:1] = B4[5:2];
            bs4[4:1] = S4_OUTPUT;
				case({m4,n4})
				6'd0: S4_OUTPUT <= 4'h7;6'd1: S4_OUTPUT <= 4'hD;
				6'd2: S4_OUTPUT <= 4'hE;6'd3: S4_OUTPUT <= 4'h3;
				6'd4: S4_OUTPUT <= 4'h0;6'd5: S4_OUTPUT <= 4'h6;
				6'd6: S4_OUTPUT <= 4'h9;6'd7: S4_OUTPUT <= 4'hA;
				6'd8: S4_OUTPUT <= 4'h1;6'd9: S4_OUTPUT <= 4'h2;
				6'd10: S4_OUTPUT <= 4'h8;6'd11: S4_OUTPUT <= 4'h5;
				6'd12: S4_OUTPUT <= 4'hB;6'd13: S4_OUTPUT <= 4'hC;
				6'd14: S4_OUTPUT <= 4'h4;6'd15: S4_OUTPUT <= 4'hF;
				6'd16: S4_OUTPUT <= 4'hD;6'd17: S4_OUTPUT <= 4'h8;
				6'd18: S4_OUTPUT <= 4'hB;6'd19: S4_OUTPUT <= 4'h5;
				6'd20: S4_OUTPUT <= 4'h6;6'd21: S4_OUTPUT <= 4'hF;
				6'd22: S4_OUTPUT <= 4'h0;6'd23: S4_OUTPUT <= 4'h3;
				6'd24: S4_OUTPUT <= 4'h4;6'd25: S4_OUTPUT <= 4'h7;
				6'd26: S4_OUTPUT <= 4'h2;6'd27: S4_OUTPUT <= 4'hC;
				6'd28: S4_OUTPUT <= 4'h1;6'd29: S4_OUTPUT <= 4'hA;
				6'd30: S4_OUTPUT <= 4'hE;6'd31: S4_OUTPUT <= 4'h9;
				6'd32: S4_OUTPUT <= 4'hA;6'd33: S4_OUTPUT <= 4'h6;
				6'd34: S4_OUTPUT <= 4'h9;6'd35: S4_OUTPUT <= 4'h0;
				6'd36: S4_OUTPUT <= 4'hC;6'd37: S4_OUTPUT <= 4'hB;
				6'd38: S4_OUTPUT <= 4'h7;6'd39: S4_OUTPUT <= 4'hD;
				6'd40: S4_OUTPUT <= 4'hF;6'd41: S4_OUTPUT <= 4'h1;
				6'd42: S4_OUTPUT <= 4'h3;6'd43: S4_OUTPUT <= 4'hE;
				6'd44: S4_OUTPUT <= 4'h5;6'd45: S4_OUTPUT <= 4'h2;
				6'd46: S4_OUTPUT <= 4'h8;6'd47: S4_OUTPUT <= 4'h4;
				6'd48: S4_OUTPUT <= 4'h3;6'd49: S4_OUTPUT <= 4'hF;
				6'd50: S4_OUTPUT <= 4'h0;6'd51: S4_OUTPUT <= 4'h6;
				6'd52: S4_OUTPUT <= 4'hA;6'd53: S4_OUTPUT <= 4'h1;
				6'd54: S4_OUTPUT <= 4'hD;6'd55: S4_OUTPUT <= 4'h8;
				6'd56: S4_OUTPUT <= 4'h9;6'd57: S4_OUTPUT <= 4'h4;
				6'd58: S4_OUTPUT <= 4'h5;6'd59: S4_OUTPUT <= 4'hB;
				6'd60: S4_OUTPUT <= 4'hC;6'd61: S4_OUTPUT <= 4'h7;
				6'd62: S4_OUTPUT <= 4'h2;6'd63: S4_OUTPUT <= 4'hE;
				default: S4_OUTPUT <= 4'h0;
				endcase
        end
    always @(*) begin
            m5[2:1] = {B5[6], B5[1]};
            n5[4:1] = B5[5:2];
            bs5[4:1] = S5_OUTPUT;
				case({m5,n5})
				6'd0: S5_OUTPUT <= 4'h2;6'd1: S5_OUTPUT <= 4'hC;
				6'd2: S5_OUTPUT <= 4'h4;6'd3: S5_OUTPUT <= 4'h1;
				6'd4: S5_OUTPUT <= 4'h7;6'd5: S5_OUTPUT <= 4'hA;
				6'd6: S5_OUTPUT <= 4'hB;6'd7: S5_OUTPUT <= 4'h6;
				6'd8: S5_OUTPUT <= 4'h8;6'd9: S5_OUTPUT <= 4'h5;
				6'd10: S5_OUTPUT <= 4'h3;6'd11: S5_OUTPUT <= 4'hF;
				6'd12: S5_OUTPUT <= 4'hD;6'd13: S5_OUTPUT <= 4'h0;
				6'd14: S5_OUTPUT <= 4'hE;6'd15: S5_OUTPUT <= 4'h9;
				6'd16: S5_OUTPUT <= 4'hE;6'd17: S5_OUTPUT <= 4'hB;
				6'd18: S5_OUTPUT <= 4'h2;6'd19: S5_OUTPUT <= 4'hC;
				6'd20: S5_OUTPUT <= 4'h4;6'd21: S5_OUTPUT <= 4'h7;
				6'd22: S5_OUTPUT <= 4'hD;6'd23: S5_OUTPUT <= 4'h1;
				6'd24: S5_OUTPUT <= 4'h5;6'd25: S5_OUTPUT <= 4'h0;
				6'd26: S5_OUTPUT <= 4'hF;6'd27: S5_OUTPUT <= 4'hA;
				6'd28: S5_OUTPUT <= 4'h3;6'd29: S5_OUTPUT <= 4'h9;
				6'd30: S5_OUTPUT <= 4'h8;6'd31: S5_OUTPUT <= 4'h6;
				6'd32: S5_OUTPUT <= 4'h4;6'd33: S5_OUTPUT <= 4'h2;
				6'd34: S5_OUTPUT <= 4'h1;6'd35: S5_OUTPUT <= 4'hB;
				6'd36: S5_OUTPUT <= 4'hA;6'd37: S5_OUTPUT <= 4'hD;
				6'd38: S5_OUTPUT <= 4'h7;6'd39: S5_OUTPUT <= 4'h8;
				6'd40: S5_OUTPUT <= 4'hF;6'd41: S5_OUTPUT <= 4'h9;
				6'd42: S5_OUTPUT <= 4'hC;6'd43: S5_OUTPUT <= 4'h5;
				6'd44: S5_OUTPUT <= 4'h6;6'd45: S5_OUTPUT <= 4'h3;
				6'd46: S5_OUTPUT <= 4'h0;6'd47: S5_OUTPUT <= 4'hE;
				6'd48: S5_OUTPUT <= 4'hB;6'd49: S5_OUTPUT <= 4'h8;
				6'd50: S5_OUTPUT <= 4'hC;6'd51: S5_OUTPUT <= 4'h7;
				6'd52: S5_OUTPUT <= 4'h1;6'd53: S5_OUTPUT <= 4'hE;
				6'd54: S5_OUTPUT <= 4'h2;6'd55: S5_OUTPUT <= 4'hD;
				6'd56: S5_OUTPUT <= 4'h6;6'd57: S5_OUTPUT <= 4'hF;
				6'd58: S5_OUTPUT <= 4'h0;6'd59: S5_OUTPUT <= 4'h9;
				6'd60: S5_OUTPUT <= 4'hA;6'd61: S5_OUTPUT <= 4'h4;
				6'd62: S5_OUTPUT <= 4'h5;6'd63: S5_OUTPUT <= 4'h3;
				default: S5_OUTPUT <= 4'h0;
				endcase
        end
    always @(*) begin
            m6[2:1] = {B6[6], B6[1]};
            n6[4:1] = B6[5:2];
            bs6[4:1] = S6_OUTPUT;
				case({m6,n6})
				6'd0: S6_OUTPUT <= 4'hC;6'd1: S6_OUTPUT <= 4'h1;
				6'd2: S6_OUTPUT <= 4'hA;6'd3: S6_OUTPUT <= 4'hF;
				6'd4: S6_OUTPUT <= 4'h9;6'd5: S6_OUTPUT <= 4'h2;
				6'd6: S6_OUTPUT <= 4'h6;6'd7: S6_OUTPUT <= 4'h8;
				6'd8: S6_OUTPUT <= 4'h0;6'd9: S6_OUTPUT <= 4'hD;
				6'd10: S6_OUTPUT <= 4'h3;6'd11: S6_OUTPUT <= 4'h4;
				6'd12: S6_OUTPUT <= 4'hE;6'd13: S6_OUTPUT <= 4'h7;
				6'd14: S6_OUTPUT <= 4'h5;6'd15: S6_OUTPUT <= 4'hB;
				6'd16: S6_OUTPUT <= 4'hA;6'd17: S6_OUTPUT <= 4'hF;
				6'd18: S6_OUTPUT <= 4'h4;6'd19: S6_OUTPUT <= 4'h2;
				6'd20: S6_OUTPUT <= 4'h7;6'd21: S6_OUTPUT <= 4'hC;
				6'd22: S6_OUTPUT <= 4'h9;6'd23: S6_OUTPUT <= 4'h5;
				6'd24: S6_OUTPUT <= 4'h6;6'd25: S6_OUTPUT <= 4'h1;
				6'd26: S6_OUTPUT <= 4'hD;6'd27: S6_OUTPUT <= 4'hE;
				6'd28: S6_OUTPUT <= 4'h0;6'd29: S6_OUTPUT <= 4'hB;
				6'd30: S6_OUTPUT <= 4'h3;6'd31: S6_OUTPUT <= 4'h8;
				6'd32: S6_OUTPUT <= 4'h9;6'd33: S6_OUTPUT <= 4'hE;
				6'd34: S6_OUTPUT <= 4'hF;6'd35: S6_OUTPUT <= 4'h5;
				6'd36: S6_OUTPUT <= 4'h2;6'd37: S6_OUTPUT <= 4'h8;
				6'd38: S6_OUTPUT <= 4'hC;6'd39: S6_OUTPUT <= 4'h3;
				6'd40: S6_OUTPUT <= 4'h7;6'd41: S6_OUTPUT <= 4'h0;
				6'd42: S6_OUTPUT <= 4'h4;6'd43: S6_OUTPUT <= 4'hA;
				6'd44: S6_OUTPUT <= 4'h1;6'd45: S6_OUTPUT <= 4'hD;
				6'd46: S6_OUTPUT <= 4'hB;6'd47: S6_OUTPUT <= 4'h6;
				6'd48: S6_OUTPUT <= 4'h4;6'd49: S6_OUTPUT <= 4'h3;
				6'd50: S6_OUTPUT <= 4'h2;6'd51: S6_OUTPUT <= 4'hC;
				6'd52: S6_OUTPUT <= 4'h9;6'd53: S6_OUTPUT <= 4'h5;
				6'd54: S6_OUTPUT <= 4'hF;6'd55: S6_OUTPUT <= 4'hA;
				6'd56: S6_OUTPUT <= 4'hB;6'd57: S6_OUTPUT <= 4'hE;
				6'd58: S6_OUTPUT <= 4'h1;6'd59: S6_OUTPUT <= 4'h7;
				6'd60: S6_OUTPUT <= 4'h6;6'd61: S6_OUTPUT <= 4'h0;
				6'd62: S6_OUTPUT <= 4'h8;6'd63: S6_OUTPUT <= 4'hD;
				default: S6_OUTPUT <= 4'h0;
				endcase
        end
    always @(*) begin
            m7[2:1] = {B7[6], B7[1]};
            n7[4:1] = B7[5:2];
            bs7[4:1] = S7_OUTPUT;
				case({m7,n7})
				6'd0: S7_OUTPUT <= 4'h4;6'd1: S7_OUTPUT <= 4'hB;
				6'd2: S7_OUTPUT <= 4'h2;6'd3: S7_OUTPUT <= 4'hE;
				6'd4: S7_OUTPUT <= 4'hF;6'd5: S7_OUTPUT <= 4'h0;
				6'd6: S7_OUTPUT <= 4'h8;6'd7: S7_OUTPUT <= 4'hD;
				6'd8: S7_OUTPUT <= 4'h3;6'd9: S7_OUTPUT <= 4'hC;
				6'd10: S7_OUTPUT <= 4'h9;6'd11: S7_OUTPUT <= 4'h7;
				6'd12: S7_OUTPUT <= 4'h5;6'd13: S7_OUTPUT <= 4'hA;
				6'd14: S7_OUTPUT <= 4'h6;6'd15: S7_OUTPUT <= 4'h1;
				6'd16: S7_OUTPUT <= 4'hD;6'd17: S7_OUTPUT <= 4'h0;
				6'd18: S7_OUTPUT <= 4'hB;6'd19: S7_OUTPUT <= 4'h7;
				6'd20: S7_OUTPUT <= 4'h4;6'd21: S7_OUTPUT <= 4'h9;
				6'd22: S7_OUTPUT <= 4'h1;6'd23: S7_OUTPUT <= 4'hA;
				6'd24: S7_OUTPUT <= 4'hE;6'd25: S7_OUTPUT <= 4'h3;
				6'd26: S7_OUTPUT <= 4'h5;6'd27: S7_OUTPUT <= 4'hC;
				6'd28: S7_OUTPUT <= 4'h2;6'd29: S7_OUTPUT <= 4'hF;
				6'd30: S7_OUTPUT <= 4'h8;6'd31: S7_OUTPUT <= 4'h6;
				6'd32: S7_OUTPUT <= 4'h1;6'd33: S7_OUTPUT <= 4'h4;
				6'd34: S7_OUTPUT <= 4'hB;6'd35: S7_OUTPUT <= 4'hD;
				6'd36: S7_OUTPUT <= 4'hC;6'd37: S7_OUTPUT <= 4'h3;
				6'd38: S7_OUTPUT <= 4'h7;6'd39: S7_OUTPUT <= 4'hE;
				6'd40: S7_OUTPUT <= 4'hA;6'd41: S7_OUTPUT <= 4'hF;
				6'd42: S7_OUTPUT <= 4'h6;6'd43: S7_OUTPUT <= 4'h8;
				6'd44: S7_OUTPUT <= 4'h0;6'd45: S7_OUTPUT <= 4'h5;
				6'd46: S7_OUTPUT <= 4'h9;6'd47: S7_OUTPUT <= 4'h2;
				6'd48: S7_OUTPUT <= 4'h6;6'd49: S7_OUTPUT <= 4'hB;
				6'd50: S7_OUTPUT <= 4'hD;6'd51: S7_OUTPUT <= 4'h8;
				6'd52: S7_OUTPUT <= 4'h1;6'd53: S7_OUTPUT <= 4'h4;
				6'd54: S7_OUTPUT <= 4'hA;6'd55: S7_OUTPUT <= 4'h7;
				6'd56: S7_OUTPUT <= 4'h9;6'd57: S7_OUTPUT <= 4'h5;
				6'd58: S7_OUTPUT <= 4'h0;6'd59: S7_OUTPUT <= 4'hF;
				6'd60: S7_OUTPUT <= 4'hE;6'd61: S7_OUTPUT <= 4'h2;
				6'd62: S7_OUTPUT <= 4'h3;6'd63: S7_OUTPUT <= 4'hC;
				default: S7_OUTPUT <= 4'h0;
				endcase
        end
    always @(*)begin
            m8[2:1] = {B8[6], B8[1]};
            n8[4:1] = B8[5:2];
            bs8[4:1] = S8_OUTPUT;
				case({m8,n8})
				6'd0: S8_OUTPUT <= 4'hD;6'd1: S8_OUTPUT <= 4'h2;
				6'd2: S8_OUTPUT <= 4'h8;6'd3: S8_OUTPUT <= 4'h4;
				6'd4: S8_OUTPUT <= 4'h6;6'd5: S8_OUTPUT <= 4'hF;
				6'd6: S8_OUTPUT <= 4'hB;6'd7: S8_OUTPUT <= 4'h1;
				6'd8: S8_OUTPUT <= 4'hA;6'd9: S8_OUTPUT <= 4'h9;
				6'd10: S8_OUTPUT <= 4'h3;6'd11: S8_OUTPUT <= 4'hE;
				6'd12: S8_OUTPUT <= 4'h5;6'd13: S8_OUTPUT <= 4'h0;
				6'd14: S8_OUTPUT <= 4'hC;6'd15: S8_OUTPUT <= 4'h7;
				6'd16: S8_OUTPUT <= 4'h1;6'd17: S8_OUTPUT <= 4'hF;
				6'd18: S8_OUTPUT <= 4'hD;6'd19: S8_OUTPUT <= 4'h8;
				6'd20: S8_OUTPUT <= 4'hA;6'd21: S8_OUTPUT <= 4'h3;
				6'd22: S8_OUTPUT <= 4'h7;6'd23: S8_OUTPUT <= 4'h4;
				6'd24: S8_OUTPUT <= 4'hC;6'd25: S8_OUTPUT <= 4'h5;
				6'd26: S8_OUTPUT <= 4'h6;6'd27: S8_OUTPUT <= 4'hB;
				6'd28: S8_OUTPUT <= 4'h0;6'd29: S8_OUTPUT <= 4'hE;
				6'd30: S8_OUTPUT <= 4'h9;6'd31: S8_OUTPUT <= 4'h2;
				6'd32: S8_OUTPUT <= 4'h7;6'd33: S8_OUTPUT <= 4'hB;
				6'd34: S8_OUTPUT <= 4'h4;6'd35: S8_OUTPUT <= 4'h1;
				6'd36: S8_OUTPUT <= 4'h9;6'd37: S8_OUTPUT <= 4'hC;
				6'd38: S8_OUTPUT <= 4'hE;6'd39: S8_OUTPUT <= 4'h2;
				6'd40: S8_OUTPUT <= 4'h0;6'd41: S8_OUTPUT <= 4'h6;
				6'd42: S8_OUTPUT <= 4'hA;6'd43: S8_OUTPUT <= 4'hD;
				6'd44: S8_OUTPUT <= 4'hF;6'd45: S8_OUTPUT <= 4'h3;
				6'd46: S8_OUTPUT <= 4'h5;6'd47: S8_OUTPUT <= 4'h8;
				6'd48: S8_OUTPUT <= 4'h2;6'd49: S8_OUTPUT <= 4'h1;
				6'd50: S8_OUTPUT <= 4'hE;6'd51: S8_OUTPUT <= 4'h7;
				6'd52: S8_OUTPUT <= 4'h4;6'd53: S8_OUTPUT <= 4'hA;
				6'd54: S8_OUTPUT <= 4'h8;6'd55: S8_OUTPUT <= 4'hD;
				6'd56: S8_OUTPUT <= 4'hF;6'd57: S8_OUTPUT <= 4'hC;
				6'd58: S8_OUTPUT <= 4'h9;6'd59: S8_OUTPUT <= 4'h0;
				6'd60: S8_OUTPUT <= 4'h3;6'd61: S8_OUTPUT <= 4'h5;
				6'd62: S8_OUTPUT <= 4'h6;6'd63: S8_OUTPUT <= 4'hB;
				default: S8_OUTPUT <= 4'h0;
				endcase
        end
            assign tmp1[32:1] = {bs1, bs2, bs3, bs4, bs5, bs6, bs7, bs8};
            assign tmp2[32:1] = {
            tmp1[33 - 16], tmp1[33 -  7], tmp1[33 - 20], tmp1[33 - 21], tmp1[33 - 29], tmp1[33 - 12], tmp1[33 - 28], tmp1[33 - 17],
            tmp1[33 -  1], tmp1[33 - 15], tmp1[33 - 23], tmp1[33 - 26], tmp1[33 -  5], tmp1[33 - 18], tmp1[33 - 31], tmp1[33 - 10],
            tmp1[33 -  2], tmp1[33 -  8], tmp1[33 - 24], tmp1[33 - 14], tmp1[33 - 32], tmp1[33 - 27], tmp1[33 -  3], tmp1[33 -  9],
            tmp1[33 - 19], tmp1[33 - 13], tmp1[33 - 30], tmp1[33 -  6], tmp1[33 - 22], tmp1[33 - 11], tmp1[33 -  4], tmp1[33 - 25]};
            
				assign Rn[32:1] = tmp2 ^ Li;
	 
endmodule