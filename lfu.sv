module lfu(clk, rst, b1, b2, b3, b4, b5, l1, l2, l3, l4, l5);
	input clk;
	input rst;
	input b1, b2, b3, b4, b5;
	output l1, l2, l3, l4, l5;
	
	reg [4:0][7:0] used_counter;
	reg [31:0] counter;
	
	always_ff@(posedge clk) begin
		counter <= counter + 1'd1;
		
		if (counter == 32'd99999998) begin
		
			if (rst) begin
				used_counter[0] <= 0;
				used_counter[1] <= 0;
				used_counter[2] <= 0;
				used_counter[3] <= 0;
				used_counter[4] <= 0;
			end
		
			if (b1) begin
				used_counter[0] <= used_counter[0] + 1'd1;
			end else if (b2) begin
				used_counter[1] <= used_counter[1] + 1'd1;
			end else if (b3) begin
				used_counter[2] <= used_counter[2] + 1'd1;
			end else if (b4) begin
				used_counter[3] <= used_counter[3] + 1'd1;
			end else if (b5) begin
				used_counter[4] <= used_counter[4] + 1'd1;
			end
			
			if (used_counter[0] && used_counter[1] && used_counter[2] && used_counter[3] && used_counter[4]) begin
				reg [7:0] lowestValue = 8'd256;
				
				for (reg [2:0] i = 3'd0; i < 3'd5; i++) begin
					if (lowestValue < used_counter[i])
						lowestValue <= used_counter[i];
				end
				
				for (reg [2:0] i = 3'd0; i < 3'd5; i++) begin
					if (lowestValue == used_counter[i])
						used_counter[i] <= 0;
				end
			end
			
			if (!used_counter[0]) begin
				l1 <= 1'd1;
			end else begin
				l1 <= 1'd0;
			end
			
			if (!used_counter[1]) begin
				l2 <= 1'd1;
			end else begin
				l2 <= 1'd0;
			end
			
			if (!used_counter[2]) begin
				l3 <= 1'd1;
			end else begin
				l3 <= 1'd0;
			end
			
			if (!used_counter[3]) begin
				l4 <= 1'd1;
			end else begin
				l4 <= 1'd0;
			end
			
			if (!used_counter[4]) begin
				l5 <= 1'd1;
			end else begin
				l5 <= 1'd0;
			end
		
			counter <= 1'd0;
		end
	end
endmodule