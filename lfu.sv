module lfu(clk, rst, b1, b2, b3, b4, l1, l2, l3, l4);
  input clk;
  input rst;
  input b1, b2, b3, b4;
  output reg l1, l2, l3, l4;

  reg timedClock;
  reg [3:0][7:0] used_counter = 32'd0;
  reg [3:0][7:0] used_counter_ff;
  reg [7:0] lowestValue = 8'd255;
  reg [4:0] addedIndex;

  enum {BEGIN, INITIAL, ADD} CurrentState, NextState;

  timer t(.clock(clk), .timedClock(timedClock), .rst(rst));

  always_comb begin
    used_counter = used_counter_ff;

    lowestValue = used_counter[0];

    case (CurrentState)
      BEGIN: begin
        used_counter = 32'd0;
        addedIndex = 5'd16;

        l1 = 1'b0;
        l2 = 1'b0;
        l3 = 1'b0;
        l4 = 1'b0;
      end
      INITIAL: begin
        addedIndex = 5'd16;

        l1 = used_counter[0] ? 1'b1 : 1'b0;
        l2 = used_counter[1] ? 1'b1 : 1'b0;
        l3 = used_counter[2] ? 1'b1 : 1'b0;
        l4 = used_counter[3] ? 1'b1 : 1'b0;
      end
      ADD: begin
        l1 = used_counter[0] ? 1'b1 : 1'b0;
        l2 = used_counter[1] ? 1'b1 : 1'b0;
        l3 = used_counter[2] ? 1'b1 : 1'b0;
        l4 = used_counter[3] ? 1'b1 : 1'b0;
        
        if (b1) begin
          used_counter[0]++;
          addedIndex = 5'd0;
        end else if (b2) begin
          used_counter[1]++;
          addedIndex = 5'd1;
        end else if (b3) begin
          used_counter[2]++;
          addedIndex = 5'd2;
        end else if (b4) begin
          used_counter[3]++;
          addedIndex = 5'd3;
        end else begin
          addedIndex = 5'd16;
        end
        
        if (used_counter[0] && used_counter[1] && used_counter[2] && used_counter[3]) begin
          for (reg [3:0] i = 4'd0; i < 4'd4; i++) begin
            if ((lowestValue > used_counter[i]) && (i != addedIndex)) begin
              lowestValue = used_counter[i];
            end
          end

          for (reg [3:0] i = 4'd0; i < 4'd4; i++) begin
            if (lowestValue == used_counter[i] && (i != addedIndex)) begin
              used_counter[i] = 8'd0;
            end
          end
        end
      end
    endcase
  end
  
  always_comb begin
	 NextState = CurrentState;
  
	 case (CurrentState)
      BEGIN: NextState = INITIAL;
      INITIAL: if (b1 || b2 || b3 || b4) NextState = ADD;
      ADD: NextState = INITIAL;
    endcase
  end

  always_ff @(posedge timedClock, posedge rst) begin
	 if (rst) begin
      CurrentState <= BEGIN;
		used_counter_ff <= 32'd0;
    end else begin 
      CurrentState <= NextState;
		used_counter_ff <= used_counter;
    end
  end
endmodule