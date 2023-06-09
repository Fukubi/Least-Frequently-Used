module tb_lfu;
	timeunit 1ns;
	timeprecision 1ns;
	
	logic b1, b2, b3, b4;
	logic l1, l2, l3, l4;
	logic rst;
	logic clk;
	logic timedClock;
	
	lfu tst_lfu (.*);
	timer tst_timer (.clock(clk), .timedClock(timedClock), .rst(rst));
	
	initial clk = 1'd0;
	always #20 clk = ~clk;
	
	task xpect(input l1_exp, l2_exp, l3_exp, l4_exp);
		if (l1_exp != l1 || l2_exp != l2 || l3_exp != l3 || l4_exp != l4) begin
			$display("LFU TEST ERROR");
			$display("l1_exp: %b - %b | l2_exp: %b - %b | l3_exp: %b - %b | l4_exp: %b - %b", l1_exp, l1, l2_exp, l2, l3_exp, l3, l4_exp, l4);
			$finish;
		end
	endtask
	
	initial begin
		@(negedge clk)
		{rst, b1, b2, b3, b4} = 5'bX_X_X_X_X; @(negedge clk) xpect(1'bX, 1'bX, 1'bX, 1'bX);
		
		{rst, b1, b2, b3, b4} = 5'b1_X_X_X_X; @(negedge clk) xpect(1'b0, 1'b0, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_0_0_0; @(negedge timedClock) xpect(1'b0, 1'b0, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_1_0_0_0; @(negedge timedClock) xpect(1'b0, 1'b0, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_1_0_0_0; @(negedge timedClock) xpect(1'b1, 1'b0, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_1_0_0_0; @(negedge timedClock) xpect(1'b1, 1'b0, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_1_0_0_0; @(negedge timedClock) xpect(1'b1, 1'b0, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_1_0_0_0; @(negedge timedClock) xpect(1'b1, 1'b0, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_1_0_0_0; @(negedge timedClock) xpect(1'b1, 1'b0, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_1_0_0; @(negedge timedClock) xpect(1'b1, 1'b0, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_0_1_0_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_1_0_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_0_1_0_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_1_0_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_0_1_0_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_0_1_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_0_0_1_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b1, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_0_1_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b1, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_0_0_1_0; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b1, 1'b0);
		
		{rst, b1, b2, b3, b4} = 5'b0_0_0_0_1; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b1, 1'b0);
		{rst, b1, b2, b3, b4} = 5'b0_0_0_0_1; @(negedge timedClock) xpect(1'b1, 1'b1, 1'b0, 1'b1);

		$display("LFU TEST PASSED");
		$finish;
	end
endmodule
