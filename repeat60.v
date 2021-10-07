module repeat6060 (clk,rst,cnt);
input clk,rst;
output [5:0] cnt;

reg [5:0] cnt, internal_cnt;
wire [5:0] b1,b2,b3,b4,b5;



always @(posedge clk or posedge rst)
begin
	if (rst)	internal_cnt <= 1;
	else		internal_cnt <= b2;
end

///internal counter
assign b1 = internal_cnt + 6'd1;
assign s1 = (internal_cnt == 6'd60);
assign b2 = s1?6'd1:b1;

//actual counter
assign b3 = cnt + 6'd1;
assign b4 = s1?b3:cnt;
assign s2 = b4==6'd60;
assign b5 = s2?6'd0:b4;

always @(posedge clk or posedge rst)
begin
	if(rst)	cnt <= 0;
	else		cnt <= b5;
end


endmodule
