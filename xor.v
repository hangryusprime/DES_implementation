
module xors(a,b,z);
input [32:1] a,b;
output [32:1] z;

wire [32:1] a,b;

assign z[32:1] = a ^ b;

endmodule
