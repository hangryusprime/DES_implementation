
module RoundKeyGen(key, decrypt, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, k16);

    input [64:1] key;  
    input decrypt;  // Decrypt Signal
    output [48:1] k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, k16;  
	 
    wire [28:1] C, D;       
    wire [56:1] CDshift[1:16];  
	 
    assign {C[28:1], D[28:1]} = {
            key[65 - 57], key[65 - 49], key[65 - 41], key[65 - 33], key[65 - 25], key[65 - 17], key[65 -  9], 
				key[65 -  1], key[65 - 58], key[65 - 50], key[65 - 42], key[65 - 34], key[65 - 26], key[65 - 18],
				key[65 - 10], key[65 -  2], key[65 - 59], key[65 - 51], key[65 - 43], key[65 - 35], key[65 - 27],
				key[65 - 19], key[65 - 11], key[65 -  3], key[65 - 60], key[65 - 52], key[65 - 44], key[65 - 36],
				key[65 - 63], key[65 - 55], key[65 - 47], key[65 - 39], key[65 - 31], key[65 - 23], key[65 - 15],
				key[65 -  7], key[65 - 62], key[65 - 54], key[65 - 46], key[65 - 38], key[65 - 30], key[65 - 22],
				key[65 - 14], key[65 -  6], key[65 - 61], key[65 - 53], key[65 - 45], key[65 - 37], key[65 - 29],
				key[65 - 21], key[65 - 13], key[65 -  5], key[65 - 28], key[65 - 20], key[65 - 12], key[65 -  4]};
    assign CDshift[ 1] = {C[27:1], C[   28], D[27:1], D[   28]};
    assign CDshift[ 2] = {C[26:1], C[28:27], D[26:1], D[28:27]};
    assign CDshift[ 3] = {C[24:1], C[28:25], D[24:1], D[28:25]};
    assign CDshift[ 4] = {C[22:1], C[28:23], D[22:1], D[28:23]};
    assign CDshift[ 5] = {C[20:1], C[28:21], D[20:1], D[28:21]};
    assign CDshift[ 6] = {C[18:1], C[28:19], D[18:1], D[28:19]};
    assign CDshift[ 7] = {C[16:1], C[28:17], D[16:1], D[28:17]};
    assign CDshift[ 8] = {C[14:1], C[28:15], D[14:1], D[28:15]};
    assign CDshift[ 9] = {C[13:1], C[28:14], D[13:1], D[28:14]};
    assign CDshift[10] = {C[11:1], C[28:12], D[11:1], D[28:12]};
    assign CDshift[11] = {C[ 9:1], C[28:10], D[ 9:1], D[28:10]};
    assign CDshift[12] = {C[ 7:1], C[28: 8], D[ 7:1], D[28: 8]};
    assign CDshift[13] = {C[ 5:1], C[28: 6], D[ 5:1], D[28: 6]};
    assign CDshift[14] = {C[ 3:1], C[28: 4], D[ 3:1], D[28: 4]};
    assign CDshift[15] = {C[   1], C[28: 2], D[   1], D[28: 2]};
    assign CDshift[16] = {         C[28: 1],          D[28: 1]};
    assign  k1 = Subkey(CDshift[~decrypt ?  1 : 16]);
    assign  k2 = Subkey(CDshift[~decrypt ?  2 : 15]);
    assign  k3 = Subkey(CDshift[~decrypt ?  3 : 14]);
    assign  k4 = Subkey(CDshift[~decrypt ?  4 : 13]);
    assign  k5 = Subkey(CDshift[~decrypt ?  5 : 12]);
    assign  k6 = Subkey(CDshift[~decrypt ?  6 : 11]);
    assign  k7 = Subkey(CDshift[~decrypt ?  7 : 10]);
    assign  k8 = Subkey(CDshift[~decrypt ?  8 :  9]);
    assign  k9 = Subkey(CDshift[~decrypt ?  9 :  8]);
    assign k10 = Subkey(CDshift[~decrypt ? 10 :  7]);
    assign k11 = Subkey(CDshift[~decrypt ? 11 :  6]);
    assign k12 = Subkey(CDshift[~decrypt ? 12 :  5]);
    assign k13 = Subkey(CDshift[~decrypt ? 13 :  4]);
    assign k14 = Subkey(CDshift[~decrypt ? 14 :  3]);
    assign k15 = Subkey(CDshift[~decrypt ? 15 :  2]);
    assign k16 = Subkey(CDshift[~decrypt ? 16 :  1]);

    function [48:1] Subkey;
        input [56:1] cdsin;
        Subkey[48:1] = {
            cdsin[57 - 14], cdsin[57 - 17], cdsin[57 - 11], cdsin[57 - 24], cdsin[57 -  1], cdsin[57 -  5], cdsin[57 -  3], cdsin[57 - 28],
            cdsin[57 - 15], cdsin[57 -  6], cdsin[57 - 21], cdsin[57 - 10], cdsin[57 - 23], cdsin[57 - 19], cdsin[57 - 12], cdsin[57 -  4],
            cdsin[57 - 26], cdsin[57 -  8], cdsin[57 - 16], cdsin[57 -  7], cdsin[57 - 27], cdsin[57 - 20], cdsin[57 - 13], cdsin[57 -  2],
            cdsin[57 - 41], cdsin[57 - 52], cdsin[57 - 31], cdsin[57 - 37], cdsin[57 - 47], cdsin[57 - 55], cdsin[57 - 30], cdsin[57 - 40],
            cdsin[57 - 51], cdsin[57 - 45], cdsin[57 - 33], cdsin[57 - 48], cdsin[57 - 44], cdsin[57 - 49], cdsin[57 - 39], cdsin[57 - 56],
            cdsin[57 - 34], cdsin[57 - 53], cdsin[57 - 46], cdsin[57 - 42], cdsin[57 - 50], cdsin[57 - 36], cdsin[57 - 29], cdsin[57 - 32]};
    endfunction

endmodule