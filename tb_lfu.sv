module tb_lfu;
	timeunit 1ns;
	timeprecision 100ns;
	
	localparam time PERIOD = 20;
	
	logic b1, b2, b3, b4, b5;
	logic l1, l2, l3, l4, l5;
	logic rst;
	logic clk;
	logic [31:0] sec = 0;
	
	lfu tst_lfu (.*);
	
	initial rst = 0;
	initial clk = 0;
	always #(PERIOD/2) clk = ~clk;
	
	task xpect(input l1_exp, l2_exp, l3_exp, l4_exp, l5_exp);
		if (l1_exp != l1 || l2_exp != l2 || l3_exp != l3 || l4_exp != l4 || l5_exp != l5) begin
			$display("LFU TEST ERROR");
			$display("l1_exp: $b - $b | l2_exp: $b - $b | l3_exp: $b - $b | l4_exp: $b - $b | l5_exp : $b - $b", l1_exp, l1, l2_exp, l2, l3_exp, l3, l4_exp, l4, l5_exp, l5);
			$finish;
		end
	endtask
	
	initial begin
		@(negedge clk)
		{b1, b2, b3, b4, b5} = 5'bX_X_X_X_X; @(negedge clk) xpect(1'bX, 1'bX, 1'bX, 1'bX, 1'bX);
		
		for (logic [31:0] i = 32'd0; i < 32'd99999998; i++) begin
			{b1, b2, b3, b4, b5} = 5'b1_1_1_1_1; @(negedge clk) xpect(1'bX, 1'bX, 1'bX, 1'bX, 1'bX);
		end
		
		{b1, b2, b3, b4, b5} = 5'b1_0_0_0_0; @(negedge clk) xpect(1'b1, 1'b0, 1'b0, 1'b0, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b1_0_0_0_0; @(negedge clk) xpect(1'b1, 1'b0, 1'b0, 1'b0, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b1_0_0_0_0; @(negedge clk) xpect(1'b1, 1'b0, 1'b0, 1'b0, 1'b0);
		
		{b1, b2, b3, b4, b5} = 5'b0_1_0_0_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b0, 1'b0, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b0_1_0_0_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b0, 1'b0, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b0_1_0_0_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b0, 1'b0, 1'b0);
		
		{b1, b2, b3, b4, b5} = 5'b0_0_1_0_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b1, 1'b0, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b0_0_1_0_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b1, 1'b0, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b0_0_1_0_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b1, 1'b0, 1'b0);
		
		{b1, b2, b3, b4, b5} = 5'b0_0_0_1_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b1, 1'b1, 1'b0);
		{b1, b2, b3, b4, b5} = 5'b0_0_0_1_0; @(negedge clk) xpect(1'b1, 1'b1, 1'b1, 1'b1, 1'b0);
		
		{b1, b2, b3, b4, b5} = 5'b0_0_0_0_1; @(negedge clk) xpect(1'b1, 1'b1, 1'b1, 1'b0, 1'b1);
		
	end
endmodule