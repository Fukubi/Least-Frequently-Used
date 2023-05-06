library verilog;
use verilog.vl_types.all;
entity button_led is
    port(
        clock           : in     vl_logic;
        button          : in     vl_logic;
        led             : out    vl_logic;
        counter         : out    vl_logic_vector(7 downto 0);
        rst             : in     vl_logic
    );
end button_led;
