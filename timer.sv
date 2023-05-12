`define TIME_50MHz 32'd24999999
`define TIME_SIM 32'd5

module timer(clock, timedClock, rst);
	input clock, rst;
	output reg timedClock;
	reg [31:0] counter = 32'd0;
	
	always_ff @(posedge clock) begin
	  if (rst) begin
	     counter = 32'd0;
	  end else begin
	    counter = counter + 1'd1;
	    
	    if (counter == `TIME_SIM) begin
   			  counter <= 32'd0;
   			  timedClock <= 1'd1;
    		end else begin
   			  timedClock <= 1'd0;
    		end
		end
	end
endmodule