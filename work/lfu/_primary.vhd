library verilog;
use verilog.vl_types.all;
entity lfu is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        b3              : in     vl_logic;
        b4              : in     vl_logic;
        l1              : out    vl_logic;
        l2              : out    vl_logic;
        l3              : out    vl_logic;
        l4              : out    vl_logic
    );
end lfu;
