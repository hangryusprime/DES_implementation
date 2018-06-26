`timescale 1ns / 1ps

module invFeistel(in,out);

input [32:1] in;
output [32:1] out;

wire [32:1] in;

assign out[32:1] = {
            in[33 - 9], in[33 -  17], in[33 - 23], in[33 - 31], in[33 - 13], in[33 - 28], in[33 - 2], in[33 - 18],
            in[33 -  24], in[33 - 16], in[33 - 30], in[33 - 6], in[33 -  26], in[33 - 20], in[33 - 10], in[33 - 1],
            in[33 -  8], in[33 -  14], in[33 - 25], in[33 - 3], in[33 - 4], in[33 - 29], in[33 - 11], in[33 -  19],
            in[33 - 32], in[33 - 12], in[33 - 22], in[33 -  7], in[33 - 5], in[33 - 27], in[33 -  15], in[33 - 21]};

endmodule
