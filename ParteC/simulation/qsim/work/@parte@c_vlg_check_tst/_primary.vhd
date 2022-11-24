library verilog;
use verilog.vl_types.all;
entity ParteC_vlg_check_tst is
    port(
        C               : in     vl_logic;
        N               : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        V               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ParteC_vlg_check_tst;
