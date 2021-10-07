module tb();

reg clk=0;
reg rst=1;
wire [5:0] cnt;

repeat6060 RPT_TB (clk,rst,cnt);

always #5 clk = !clk;

initial
	begin
		rst=1;
		#2;
		rst=0;
		#150000;
		$finish;	
	end
endmodule

