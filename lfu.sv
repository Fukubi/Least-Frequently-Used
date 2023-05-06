module lfu(clk, rst, b1, b2, b3, b4, b5, l1, l2, l3, l4, l5);
  input clk;
  input rst;
  input b1, b2, b3, b4, b5;
  output reg l1, l2, l3, l4, l5;

  reg timedClock;
  reg [4:0][7:0] used_counter = 32'd0;
  reg [7:0] lowestValue = 8'd255;
  reg [4:0] addedIndex;

  timer t(.clock(clk), .timedClock(timedClock), .rst(rst));

  always_ff@(posedge clk) begin
    if (rst) begin
      used_counter[0] <= 8'd0;
      used_counter[1] <= 8'd0;
      used_counter[2] <= 8'd0;
      used_counter[3] <= 8'd0;
      used_counter[4] <= 8'd0;

      l1 <= 1'd0;
      l2 <= 1'd0;
      l3 <= 1'd0;
      l4 <= 1'd0;
      l5 <= 1'd0;
    end else begin
      if (timedClock) begin
        if (b1) begin
          used_counter[0]++;
          addedIndex = 5'd0;
        end

        if (b2) begin
          used_counter[1]++;
          addedIndex = 5'd1;
        end

        if (b3) begin
          used_counter[2]++;
          addedIndex = 5'd2;
        end

        if (b4) begin
          used_counter[3]++;
          addedIndex = 5'd3;
        end

        if (b5) begin
          used_counter[4]++;
          addedIndex = 5'd4;
        end

        if (used_counter[0] && used_counter[1] && used_counter[2] && used_counter[3] && used_counter[4]) begin
          for (reg [4:0] i = 5'd0; i < 5'd5; i++) begin
            if ((lowestValue > used_counter[i]) && (i != addedIndex)) begin
              lowestValue = used_counter[i];
            end
          end

          for (reg [4:0] i = 5'd0; i < 5'd5; i++) begin
            if (lowestValue == used_counter[i] && i != addedIndex) begin
              used_counter[i] = 8'd0;
            end
          end
        end

        if (used_counter[0]) begin
          l1 <= 1'd1;
        end else begin
          l1 <= 1'd0;
        end

        if (used_counter[1]) begin
          l2 <= 1'd1;
        end else begin
          l2 <= 1'd0;
        end

        if (used_counter[2]) begin
          l3 <= 1'd1;
        end else begin
          l3 <= 1'd0;
        end

        if (used_counter[3]) begin
          l4 <= 1'd1;
        end else begin
          l4 <= 1'd0;
        end

        if (used_counter[4]) begin
          l5 <= 1'd1;
        end else begin
          l5 <= 1'd0;
        end
      end
    end
  end
endmodule