module cnt_16(clk,reset,out,count);
input clk,reset;
output[3:0] out;
reg[3:0] out;
reg count;
output count;
always@(posedge clk)
begin
if (reset) out<=0;
else out<=out+1;
if (out==4'd15) count<=1;
else count<=0;
end 
endmodule
 