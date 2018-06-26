
module InPermutation(plaintext, L0, R0);
    
    input [64:1] plaintext;
    output [32:1] L0, R0;

    assign {L0[32:1], R0[32:1]} = {
            plaintext[65 - 58], plaintext[65 - 50], plaintext[65 - 42], plaintext[65 - 34], plaintext[65 - 26], plaintext[65 - 18], plaintext[65 - 10], plaintext[65 -  2],
            plaintext[65 - 60], plaintext[65 - 52], plaintext[65 - 44], plaintext[65 - 36], plaintext[65 - 28], plaintext[65 - 20], plaintext[65 - 12], plaintext[65 -  4],
            plaintext[65 - 62], plaintext[65 - 54], plaintext[65 - 46], plaintext[65 - 38], plaintext[65 - 30], plaintext[65 - 22], plaintext[65 - 14], plaintext[65 -  6],
            plaintext[65 - 64], plaintext[65 - 56], plaintext[65 - 48], plaintext[65 - 40], plaintext[65 - 32], plaintext[65 - 24], plaintext[65 - 16], plaintext[65 -  8],
            plaintext[65 - 57], plaintext[65 - 49], plaintext[65 - 41], plaintext[65 - 33], plaintext[65 - 25], plaintext[65 - 17], plaintext[65 -  9], plaintext[65 -  1],
            plaintext[65 - 59], plaintext[65 - 51], plaintext[65 - 43], plaintext[65 - 35], plaintext[65 - 27], plaintext[65 - 19], plaintext[65 - 11], plaintext[65 -  3],
            plaintext[65 - 61], plaintext[65 - 53], plaintext[65 - 45], plaintext[65 - 37], plaintext[65 - 29], plaintext[65 - 21], plaintext[65 - 13], plaintext[65 -  5],
            plaintext[65 - 63], plaintext[65 - 55], plaintext[65 - 47], plaintext[65 - 39], plaintext[65 - 31], plaintext[65 - 23], plaintext[65 - 15], plaintext[65 -  7]};

endmodule