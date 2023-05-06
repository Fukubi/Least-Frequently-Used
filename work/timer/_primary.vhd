library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        clock           : in     vl_logic;
        timedClock      : out    vl_logic;
        rst             : in     vl_logic
    );
end timer;
