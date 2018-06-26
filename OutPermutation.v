
module OutPermutation(L16, R16, ciphertext);
    
	 input [32:1] L16, R16;
    output [64:1] ciphertext;
	 
    wire [64:1] tmp;

	 assign tmp[64:1] = {R16[32:1], L16[32:1]};
    assign ciphertext[64:1] = {
            tmp[65 - 40], tmp[65 -  8], tmp[65 - 48], tmp[65 - 16], tmp[65 - 56], tmp[65 - 24], tmp[65 - 64], tmp[65 - 32],
            tmp[65 - 39], tmp[65 -  7], tmp[65 - 47], tmp[65 - 15], tmp[65 - 55], tmp[65 - 23], tmp[65 - 63], tmp[65 - 31],
            tmp[65 - 38], tmp[65 -  6], tmp[65 - 46], tmp[65 - 14], tmp[65 - 54], tmp[65 - 22], tmp[65 - 62], tmp[65 - 30],
            tmp[65 - 37], tmp[65 -  5], tmp[65 - 45], tmp[65 - 13], tmp[65 - 53], tmp[65 - 21], tmp[65 - 61], tmp[65 - 29],
            tmp[65 - 36], tmp[65 -  4], tmp[65 - 44], tmp[65 - 12], tmp[65 - 52], tmp[65 - 20], tmp[65 - 60], tmp[65 - 28],
            tmp[65 - 35], tmp[65 -  3], tmp[65 - 43], tmp[65 - 11], tmp[65 - 51], tmp[65 - 19], tmp[65 - 59], tmp[65 - 27],
            tmp[65 - 34], tmp[65 -  2], tmp[65 - 42], tmp[65 - 10], tmp[65 - 50], tmp[65 - 18], tmp[65 - 58], tmp[65 - 26],
            tmp[65 - 33], tmp[65 -  1], tmp[65 - 41], tmp[65 -  9], tmp[65 - 49], tmp[65 - 17], tmp[65 - 57], tmp[65 - 25]
        };
endmodule