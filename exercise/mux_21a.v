module mux_21a(ain,bin,sin,yout);
input ain,bin,sin;
output yout;
reg yout;
always@(ain,bin,sin)
begin
if (sin) yout<=ain;
else yout<=bin;
end 
endmodule
