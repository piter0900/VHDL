//
// Verilog description for cell fir_top, 
// 05/31/15 16:32:06
//
// Precision RTL Synthesis, 2008a.47//


module fir_top ( clock_50, clock_27, key, sw, ledg, ledr, hex0, hex1, hex2, hex3, 
                 hex4, hex5, hex6, hex7, aud_xck, aud_bclk, aud_dacdat, 
                 aud_daclrck, aud_adclrck, i2c_sdat, i2c_sclk ) ;

    input clock_50 ;
    input clock_27 ;
    input [3:0]key ;
    input [17:0]sw ;
    output [8:0]ledg ;
    output [17:0]ledr ;
    output [6:0]hex0 ;
    output [6:0]hex1 ;
    output [6:0]hex2 ;
    output [6:0]hex3 ;
    output [6:0]hex4 ;
    output [6:0]hex5 ;
    output [6:0]hex6 ;
    output [6:0]hex7 ;
    output aud_xck ;
    inout aud_bclk ;
    output aud_dacdat ;
    output aud_daclrck ;
    output aud_adclrck ;
    inout i2c_sdat ;
    output i2c_sclk ;

    wire aud_xck_dup0, aud_bclk_dup0, aud_dacdat_dup0, aud_adclrck_dup0, 
         i2c_sclk_dup0, sine_data_11_, sine_data_10_, sine_data_9_, sine_data_8_, 
         sine_data_7_, sine_data_6_, sine_data_5_, sine_data_4_, sine_data_3_, 
         sine_data_2_, sine_data_1_, sine_data_0_, audio_out_12_, audio_out_10_, 
         audio_out_9_, audio_out_8_, audio_out_7_, audio_out_6_, audio_out_5_, 
         audio_out_4_, audio_out_3_, audio_out_2_, audio_out_1_, audio_out_0_;
    
    wire [3:0]bit_position;
    wire [11:0]rtlc_rdout_n1;
    wire [8:0]u_sine_address;
    wire [8:0]u_sine_address_0n0r2;
    wire u_audio_dac_bck_div_2_, u_audio_dac_bck_div_1_, u_audio_dac_bck_div_0_;
    
    wire [8:0]u_audio_dac_lrck_1x_div;
    wire nx24999z5, nx24999z4, nx24999z3, nx24999z2, nx24999z7, nx24999z6, 
         nx24999z1, nx38664z12, nx38664z9, nx38664z10, nx38664z7, nx38664z5, 
         nx38664z2, nx38664z3, nx4119z17, nx4119z18, nx4119z15, nx4119z12, 
         nx4119z13, nx4119z10, nx4119z6, nx4119z8, nx4119z4, nx4119z2, nx17637z2, 
         clock_27_int, key_int_0_, sw_int_6_, sw_int_5_, sw_int_4_, sw_int_3_, 
         sw_int_2_, sw_int_1_, sw_int_0_;
    wire [6:0]hex4_dup0;
    wire [6:0]hex5_dup0;
    wire [6:0]hex6_dup0;
    wire [6:4]hex7_dup0;
    wire nx52616z1, NOT_bit_position_0_, u_audio_dac_not_reset_n, nx48238z1, 
         nx50205z2, nx15494z1, nx48820z1, nx49817z1, nx50814z1, nx32096z1, 
         nx30102z1, nx30102z2, nx31099z1, nx31099z2, nx50205z3, nx50205z4, 
         nx38664z6, nx32682z1, nx4119z3, nx4119z7, nx4119z11, nx10101z1, 
         nx17637z1, nx38664z13, nx4119z16, nx10101z2, nx32682z2, nx55607z1, 
         nx52616z2, sdo_dup_239, nx50205z1;
    wire [1946:0] xmplr_dummy ;




    i2c_av_config_notri u_i2c_av_config (.p_i2c_sclk (i2c_sclk_dup0), .p_clk (
                        clock_27_int), .p_sdo (sdo_dup_239)) ;
    add_9_0 u_sine_address_add9_0i1 (.a ({u_sine_address[8],u_sine_address[7],
            u_sine_address[6],u_sine_address[5],u_sine_address[4],
            u_sine_address[3],u_sine_address[2],u_sine_address[1],
            u_sine_address[0]}), .b ({xmplr_dummy [0],xmplr_dummy [1],sw_int_6_,
            sw_int_5_,sw_int_4_,sw_int_3_,sw_int_2_,sw_int_1_,sw_int_0_}), .d ({
            u_sine_address_0n0r2[8],u_sine_address_0n0r2[7],
            u_sine_address_0n0r2[6],u_sine_address_0n0r2[5],
            u_sine_address_0n0r2[4],u_sine_address_0n0r2[3],
            u_sine_address_0n0r2[2],u_sine_address_0n0r2[1],
            u_sine_address_0n0r2[0]})) ;
    modgen_counter_9_0 u_audio_dac_modgen_counter_lrck_1x_div (.clock (
                       aud_xck_dup0), .q ({u_audio_dac_lrck_1x_div[8],
                       u_audio_dac_lrck_1x_div[7],u_audio_dac_lrck_1x_div[6],
                       u_audio_dac_lrck_1x_div[5],u_audio_dac_lrck_1x_div[4],
                       u_audio_dac_lrck_1x_div[3],u_audio_dac_lrck_1x_div[2],
                       u_audio_dac_lrck_1x_div[1],u_audio_dac_lrck_1x_div[0]}), 
                       .sclear (nx48238z1)) ;
    altpll u_audio_dac_p1_altpll (.clk ({xmplr_dummy [2],xmplr_dummy [3],
           xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7],
           xmplr_dummy [8],xmplr_dummy [9],aud_xck_dup0,xmplr_dummy [10]}), .areset (
           1'b0), .clkswitch (1'b0), .configupdate (1'b0), .fbin (1'b1), .inclk (
           {hex7_dup0[4],clock_27_int}), .pfdena (1'b1), .phasestep (1'b1), .phaseupdown (
           1'b1), .pllena (1'b1), .scanaclr (1'b0), .scanclk (1'b0), .scanclkena (
           1'b1), .scandata (1'b0), .scanread (1'b0), .scanwrite (1'b0)) ;
           
           defparam u_audio_dac_p1_altpll.CLK0_DIVIDE_BY = 15;
           
           defparam u_audio_dac_p1_altpll.CLK0_DUTY_CYCLE = 50;
           
           defparam u_audio_dac_p1_altpll.CLK0_MULTIPLY_BY = 14;
           
           defparam u_audio_dac_p1_altpll.CLK0_PHASE_SHIFT = "0";
           
           defparam u_audio_dac_p1_altpll.CLK1_DIVIDE_BY = 3;
           
           defparam u_audio_dac_p1_altpll.CLK1_DUTY_CYCLE = 50;
           
           defparam u_audio_dac_p1_altpll.CLK1_MULTIPLY_BY = 2;
           
           defparam u_audio_dac_p1_altpll.CLK1_PHASE_SHIFT = "0";
           
           defparam u_audio_dac_p1_altpll.COMPENSATE_CLOCK = "CLK0";
           
           defparam u_audio_dac_p1_altpll.INCLK0_INPUT_FREQUENCY = 37037;
           
           defparam u_audio_dac_p1_altpll.INTENDED_DEVICE_FAMILY = "Cyclone II";
           
           defparam u_audio_dac_p1_altpll.LPM_TYPE = "altpll";
           
           defparam u_audio_dac_p1_altpll.OPERATION_MODE = "NORMAL";
           
           defparam u_audio_dac_p1_altpll.PLL_TYPE = "FAST";
    altsyncram u_sine_modgen_rom_ix21__ix62120z58995 (.address_a ({
               u_sine_address_0n0r2[8],u_sine_address_0n0r2[7],
               u_sine_address_0n0r2[6],u_sine_address_0n0r2[5],
               u_sine_address_0n0r2[4],u_sine_address_0n0r2[3]}), .wren_a (
               hex7_dup0[4]), .clock0 (aud_adclrck_dup0), .clocken0 (
               hex7_dup0[6]), .q_a ({sine_data_11_,sine_data_10_,sine_data_9_,
               sine_data_8_,sine_data_7_,sine_data_6_,sine_data_5_,sine_data_4_,
               sine_data_3_,sine_data_2_,sine_data_1_,sine_data_0_})) ;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.lpm_type = "altsyncram";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.lpm_hint = "UNUSED";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.intended_device_family = "Stratix";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.maximum_depth = 0;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.init_file_layout = "UNUSED";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.init_file = "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.ram_block_type = "AUTO";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.byte_size = 8;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.operation_mode = "ROM";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.address_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.width_byteena_b = 1;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.byteena_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.wrcontrol_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.indata_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.byteena_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.indata_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.rdcontrol_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.outdata_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.outdata_reg_b = "UNREGISTERED";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.address_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.rdcontrol_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.numwords_b = 64;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.widthad_b = 6;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.width_b = 12;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.width_byteena_a = 1;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.byteena_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.wrcontrol_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.indata_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.outdata_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.address_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.outdata_reg_a = "UNREGISTERED";
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.numwords_a = 64;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.widthad_a = 6;
               
               defparam u_sine_modgen_rom_ix21__ix62120z58995.width_a = 12;
    TRI ix12601z20184 (.OUT (aud_bclk), .IN (aud_bclk_dup0), .OE (hex7_dup0[6])
        ) ;
    assign hex7_dup0[6] = 1 ;
    assign hex7_dup0[4] = 0 ;
    assign u_audio_dac_not_reset_n = ~key_int_0_ ;
    cycloneii_lcell_ff u_sine_reg_address_8_ (.regout (u_sine_address[8]), .datain (
                       u_sine_address_0n0r2[8]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_7_ (.regout (u_sine_address[7]), .datain (
                       u_sine_address_0n0r2[7]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_6_ (.regout (u_sine_address[6]), .datain (
                       u_sine_address_0n0r2[6]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_5_ (.regout (u_sine_address[5]), .datain (
                       u_sine_address_0n0r2[5]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_4_ (.regout (u_sine_address[4]), .datain (
                       u_sine_address_0n0r2[4]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_3_ (.regout (u_sine_address[3]), .datain (
                       u_sine_address_0n0r2[3]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_2_ (.regout (u_sine_address[2]), .datain (
                       u_sine_address_0n0r2[2]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_1_ (.regout (u_sine_address[1]), .datain (
                       u_sine_address_0n0r2[1]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_0_ (.regout (u_sine_address[0]), .datain (
                       u_sine_address_0n0r2[0]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_io u_i2c_av_config_u0_ix31977z43919 (.padio (i2c_sdat), .datain (
                 sdo_dup_239), .oe (hex7_dup0[6]), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.operation_mode = "bidir";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.open_drain_output = "true";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.output_register_mode = "none";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.tie_off_output_clock_enable = "false";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.oe_register_mode = "none";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.input_register_mode = "none";
    cycloneii_lcell_ff u_audio_dac_reg_lrck_1x (.regout (aud_adclrck_dup0), .datain (
                       nx50205z1), .sdata (1'b0), .clk (aud_xck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (u_audio_dac_not_reset_n), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_reg_aud_bck (.regout (aud_bclk_dup0), .datain (
                       nx15494z1), .sdata (1'b0), .clk (aud_xck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (u_audio_dac_not_reset_n), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_2_ (.regout (
                       u_audio_dac_bck_div_2_), .datain (nx30102z1), .sdata (
                       1'b0), .clk (aud_xck_dup0), .ena (nx30102z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_1_ (.regout (
                       u_audio_dac_bck_div_1_), .datain (nx31099z1), .sdata (
                       1'b0), .clk (aud_xck_dup0), .ena (nx31099z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_0_ (.regout (
                       u_audio_dac_bck_div_0_), .datain (nx32096z1), .sdata (
                       1'b0), .clk (aud_xck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io sw_ibuf_6_ (.combout (sw_int_6_), .padio (sw[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_6_.operation_mode = "input";
                 
                 defparam sw_ibuf_6_.output_register_mode = "none";
                 
                 defparam sw_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_6_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_6_.input_register_mode = "none";
    cycloneii_io sw_ibuf_5_ (.combout (sw_int_5_), .padio (sw[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_5_.operation_mode = "input";
                 
                 defparam sw_ibuf_5_.output_register_mode = "none";
                 
                 defparam sw_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_5_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_5_.input_register_mode = "none";
    cycloneii_io sw_ibuf_4_ (.combout (sw_int_4_), .padio (sw[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_4_.operation_mode = "input";
                 
                 defparam sw_ibuf_4_.output_register_mode = "none";
                 
                 defparam sw_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_4_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_4_.input_register_mode = "none";
    cycloneii_io sw_ibuf_3_ (.combout (sw_int_3_), .padio (sw[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_3_.operation_mode = "input";
                 
                 defparam sw_ibuf_3_.output_register_mode = "none";
                 
                 defparam sw_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_3_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_3_.input_register_mode = "none";
    cycloneii_io sw_ibuf_2_ (.combout (sw_int_2_), .padio (sw[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_2_.operation_mode = "input";
                 
                 defparam sw_ibuf_2_.output_register_mode = "none";
                 
                 defparam sw_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_2_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_2_.input_register_mode = "none";
    cycloneii_io sw_ibuf_1_ (.combout (sw_int_1_), .padio (sw[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_1_.operation_mode = "input";
                 
                 defparam sw_ibuf_1_.output_register_mode = "none";
                 
                 defparam sw_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_1_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_1_.input_register_mode = "none";
    cycloneii_io sw_ibuf_0_ (.combout (sw_int_0_), .padio (sw[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_0_.operation_mode = "input";
                 
                 defparam sw_ibuf_0_.output_register_mode = "none";
                 
                 defparam sw_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_0_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_0_.input_register_mode = "none";
    cycloneii_lcell_ff reg_audio_out_9_ (.regout (audio_out_9_), .datain (
                       sine_data_9_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_8_ (.regout (audio_out_8_), .datain (
                       sine_data_8_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_7_ (.regout (audio_out_7_), .datain (
                       sine_data_7_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_6_ (.regout (audio_out_6_), .datain (
                       sine_data_6_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_5_ (.regout (audio_out_5_), .datain (
                       sine_data_5_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_4_ (.regout (audio_out_4_), .datain (
                       sine_data_4_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_3_ (.regout (audio_out_3_), .datain (
                       sine_data_3_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_2_ (.regout (audio_out_2_), .datain (
                       sine_data_2_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_12_ (.regout (audio_out_12_), .datain (
                       sine_data_11_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_10_ (.regout (audio_out_10_), .datain (
                       sine_data_10_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_1_ (.regout (audio_out_1_), .datain (
                       sine_data_1_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_0_ (.regout (audio_out_0_), .datain (
                       sine_data_0_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix17637z52925 (.combout (nx17637z2), .dataa (sw_int_5_)
                         , .datab (sw_int_2_), .datac (sw_int_0_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix17637z52925.lut_mask = 16'haaa8;
    cycloneii_lcell_comb ix49625z52927 (.combout (rtlc_rdout_n1[0]), .dataa (
                         sw_int_2_), .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52927.lut_mask = 16'h9c69;
    cycloneii_lcell_comb ix4119z52925 (.combout (nx4119z2), .dataa (1'b1), .datab (
                         sw_int_4_), .datac (sw_int_2_), .datad (sw_int_5_), .cin (
                         1'b0)) ;
                         defparam ix4119z52925.lut_mask = 16'h33c0;
    cycloneii_lcell_comb ix4119z52927 (.combout (nx4119z4), .dataa (sw_int_1_), 
                         .datab (sw_int_2_), .datac (sw_int_0_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix4119z52927.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix4119z52931 (.combout (nx4119z8), .dataa (sw_int_1_), 
                         .datab (sw_int_0_), .datac (sw_int_2_), .datad (
                         sw_int_3_), .cin (1'b0)) ;
                         
                         defparam ix4119z52931.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix4119z52929 (.combout (nx4119z6), .dataa (sw_int_5_), 
                         .datab (sw_int_4_), .datac (sw_int_2_), .datad (
                         sw_int_3_), .cin (1'b0)) ;
                         
                         defparam ix4119z52929.lut_mask = 16'h1115;
    cycloneii_lcell_comb ix4119z52933 (.combout (nx4119z10), .dataa (sw_int_6_)
                         , .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_2_), .cin (1'b0)) ;
                         
                         defparam ix4119z52933.lut_mask = 16'h666a;
    cycloneii_lcell_comb ix4119z52936 (.combout (nx4119z13), .dataa (sw_int_0_)
                         , .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_2_), .cin (1'b0)) ;
                         
                         defparam ix4119z52936.lut_mask = 16'h0313;
    cycloneii_lcell_comb ix4119z52935 (.combout (nx4119z12), .dataa (sw_int_6_)
                         , .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_2_), .cin (1'b0)) ;
                         
                         defparam ix4119z52935.lut_mask = 16'hc101;
    cycloneii_lcell_comb ix4119z52938 (.combout (nx4119z15), .dataa (1'b1), .datab (
                         sw_int_4_), .datac (sw_int_2_), .datad (sw_int_5_), .cin (
                         1'b0)) ;
                         defparam ix4119z52938.lut_mask = 16'hf30c;
    cycloneii_lcell_comb ix4119z52941 (.combout (nx4119z18), .dataa (sw_int_0_)
                         , .datab (sw_int_4_), .datac (sw_int_2_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix4119z52941.lut_mask = 16'hcd32;
    cycloneii_lcell_comb ix4119z52940 (.combout (nx4119z17), .dataa (1'b1), .datab (
                         sw_int_4_), .datac (sw_int_2_), .datad (sw_int_5_), .cin (
                         1'b0)) ;
                         defparam ix4119z52940.lut_mask = 16'h0cf3;
    cycloneii_lcell_comb ix38664z52926 (.combout (nx38664z3), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix38664z52926.lut_mask = 16'h2004;
    cycloneii_lcell_comb ix38664z52925 (.combout (nx38664z2), .dataa (1'b1), .datab (
                         sw_int_2_), .datac (sw_int_3_), .datad (sw_int_1_), .cin (
                         1'b0)) ;
                         defparam ix38664z52925.lut_mask = 16'h03c0;
    cycloneii_lcell_comb ix38664z52928 (.combout (nx38664z5), .dataa (sw_int_1_)
                         , .datab (sw_int_3_), .datac (sw_int_2_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix38664z52928.lut_mask = 16'hd2b0;
    cycloneii_lcell_comb ix38664z52930 (.combout (nx38664z7), .dataa (sw_int_2_)
                         , .datab (sw_int_6_), .datac (sw_int_0_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix38664z52930.lut_mask = 16'h5515;
    cycloneii_lcell_comb ix38664z52933 (.combout (nx38664z10), .dataa (sw_int_2_
                         ), .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix38664z52933.lut_mask = 16'h4338;
    cycloneii_lcell_comb ix38664z52932 (.combout (nx38664z9), .dataa (1'b1), .datab (
                         sw_int_2_), .datac (sw_int_3_), .datad (sw_int_1_), .cin (
                         1'b0)) ;
                         defparam ix38664z52932.lut_mask = 16'h3c03;
    cycloneii_lcell_comb ix38664z52935 (.combout (nx38664z12), .dataa (sw_int_6_
                         ), .datab (sw_int_4_), .datac (sw_int_2_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix38664z52935.lut_mask = 16'h3c34;
    cycloneii_lcell_comb ix49625z52924 (.combout (rtlc_rdout_n1[3]), .dataa (
                         sw_int_2_), .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52924.lut_mask = 16'h8111;
    cycloneii_lcell_comb ix49625z52925 (.combout (rtlc_rdout_n1[2]), .dataa (
                         sw_int_2_), .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52925.lut_mask = 16'h3226;
    cycloneii_lcell_comb ix49625z52926 (.combout (rtlc_rdout_n1[1]), .dataa (
                         sw_int_2_), .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52926.lut_mask = 16'h5642;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_3_ (.regout (
                       bit_position[3]), .datain (nx48820z1), .sdata (1'b0), .clk (
                       aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_2_ (.regout (
                       bit_position[2]), .datain (nx49817z1), .sdata (1'b0), .clk (
                       aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_1_ (.regout (
                       bit_position[1]), .datain (nx50814z1), .sdata (1'b0), .clk (
                       aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_0_ (.regout (
                       bit_position[0]), .datain (NOT_bit_position_0_), .sdata (
                       1'b0), .clk (aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io ledr_triBus2_9_ (.padio (ledr[9]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_9_.operation_mode = "output";
                 
                 defparam ledr_triBus2_9_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_9_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_9_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_9_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_8_ (.padio (ledr[8]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_8_.operation_mode = "output";
                 
                 defparam ledr_triBus2_8_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_8_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_8_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_8_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_7_ (.padio (ledr[7]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_7_.operation_mode = "output";
                 
                 defparam ledr_triBus2_7_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_7_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_7_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_7_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_6_ (.padio (ledr[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_6_.operation_mode = "output";
                 
                 defparam ledr_triBus2_6_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_6_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_6_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_6_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_5_ (.padio (ledr[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_5_.operation_mode = "output";
                 
                 defparam ledr_triBus2_5_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_5_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_5_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_5_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_4_ (.padio (ledr[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_4_.operation_mode = "output";
                 
                 defparam ledr_triBus2_4_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_4_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_4_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_4_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_3_ (.padio (ledr[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_3_.operation_mode = "output";
                 
                 defparam ledr_triBus2_3_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_3_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_3_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_3_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_2_ (.padio (ledr[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_2_.operation_mode = "output";
                 
                 defparam ledr_triBus2_2_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_2_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_2_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_2_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_17_ (.padio (ledr[17]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_17_.operation_mode = "output";
                 
                 defparam ledr_triBus2_17_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_17_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_17_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_17_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_16_ (.padio (ledr[16]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_16_.operation_mode = "output";
                 
                 defparam ledr_triBus2_16_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_16_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_16_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_16_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_15_ (.padio (ledr[15]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_15_.operation_mode = "output";
                 
                 defparam ledr_triBus2_15_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_15_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_15_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_15_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_14_ (.padio (ledr[14]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_14_.operation_mode = "output";
                 
                 defparam ledr_triBus2_14_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_14_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_14_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_14_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_13_ (.padio (ledr[13]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_13_.operation_mode = "output";
                 
                 defparam ledr_triBus2_13_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_13_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_13_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_13_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_12_ (.padio (ledr[12]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_12_.operation_mode = "output";
                 
                 defparam ledr_triBus2_12_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_12_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_12_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_12_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_11_ (.padio (ledr[11]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_11_.operation_mode = "output";
                 
                 defparam ledr_triBus2_11_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_11_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_11_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_11_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_10_ (.padio (ledr[10]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_10_.operation_mode = "output";
                 
                 defparam ledr_triBus2_10_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_10_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_10_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_10_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_1_ (.padio (ledr[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_1_.operation_mode = "output";
                 
                 defparam ledr_triBus2_1_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_1_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_1_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_1_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_0_ (.padio (ledr[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_0_.operation_mode = "output";
                 
                 defparam ledr_triBus2_0_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_0_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_0_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_0_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_8_ (.padio (ledg[8]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_8_.operation_mode = "output";
                 
                 defparam ledg_triBus1_8_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_8_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_8_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_8_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_7_ (.padio (ledg[7]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_7_.operation_mode = "output";
                 
                 defparam ledg_triBus1_7_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_7_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_7_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_7_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_6_ (.padio (ledg[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_6_.operation_mode = "output";
                 
                 defparam ledg_triBus1_6_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_6_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_6_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_6_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_5_ (.padio (ledg[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_5_.operation_mode = "output";
                 
                 defparam ledg_triBus1_5_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_5_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_5_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_5_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_4_ (.padio (ledg[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_4_.operation_mode = "output";
                 
                 defparam ledg_triBus1_4_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_4_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_4_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_4_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_3_ (.padio (ledg[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_3_.operation_mode = "output";
                 
                 defparam ledg_triBus1_3_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_3_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_3_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_3_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_2_ (.padio (ledg[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_2_.operation_mode = "output";
                 
                 defparam ledg_triBus1_2_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_2_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_2_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_1_ (.padio (ledg[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_1_.operation_mode = "output";
                 
                 defparam ledg_triBus1_1_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_1_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_1_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_0_ (.padio (ledg[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_0_.operation_mode = "output";
                 
                 defparam ledg_triBus1_0_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_0_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_0_.input_register_mode = "none";
    cycloneii_io key_ibuf_0_ (.combout (key_int_0_), .padio (key[0]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam key_ibuf_0_.operation_mode = "input";
                 
                 defparam key_ibuf_0_.output_register_mode = "none";
                 
                 defparam key_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam key_ibuf_0_.oe_register_mode = "none";
                 
                 defparam key_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam key_ibuf_0_.input_register_mode = "none";
    cycloneii_io i2c_sclk_obuf (.padio (i2c_sclk), .datain (i2c_sclk_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2c_sclk_obuf.operation_mode = "output";
                 
                 defparam i2c_sclk_obuf.output_register_mode = "none";
                 
                 defparam i2c_sclk_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam i2c_sclk_obuf.oe_register_mode = "none";
                 
                 defparam i2c_sclk_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i2c_sclk_obuf.input_register_mode = "none";
    cycloneii_io hex7_obuf_6_ (.padio (hex7[6]), .datain (hex7_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_6_.operation_mode = "output";
                 
                 defparam hex7_obuf_6_.output_register_mode = "none";
                 
                 defparam hex7_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_6_.input_register_mode = "none";
    cycloneii_io hex7_obuf_5_ (.padio (hex7[5]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_5_.operation_mode = "output";
                 
                 defparam hex7_obuf_5_.output_register_mode = "none";
                 
                 defparam hex7_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_5_.input_register_mode = "none";
    cycloneii_io hex7_obuf_4_ (.padio (hex7[4]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_4_.operation_mode = "output";
                 
                 defparam hex7_obuf_4_.output_register_mode = "none";
                 
                 defparam hex7_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_4_.input_register_mode = "none";
    cycloneii_io hex7_obuf_3_ (.padio (hex7[3]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_3_.operation_mode = "output";
                 
                 defparam hex7_obuf_3_.output_register_mode = "none";
                 
                 defparam hex7_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_3_.input_register_mode = "none";
    cycloneii_io hex7_obuf_2_ (.padio (hex7[2]), .datain (hex7_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_2_.operation_mode = "output";
                 
                 defparam hex7_obuf_2_.output_register_mode = "none";
                 
                 defparam hex7_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_2_.input_register_mode = "none";
    cycloneii_io hex7_obuf_1_ (.padio (hex7[1]), .datain (hex7_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_1_.operation_mode = "output";
                 
                 defparam hex7_obuf_1_.output_register_mode = "none";
                 
                 defparam hex7_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_1_.input_register_mode = "none";
    cycloneii_io hex7_obuf_0_ (.padio (hex7[0]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_0_.operation_mode = "output";
                 
                 defparam hex7_obuf_0_.output_register_mode = "none";
                 
                 defparam hex7_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_0_.input_register_mode = "none";
    cycloneii_io hex6_obuf_6_ (.padio (hex6[6]), .datain (hex6_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_6_.operation_mode = "output";
                 
                 defparam hex6_obuf_6_.output_register_mode = "none";
                 
                 defparam hex6_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_6_.input_register_mode = "none";
    cycloneii_io hex6_obuf_5_ (.padio (hex6[5]), .datain (hex6_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_5_.operation_mode = "output";
                 
                 defparam hex6_obuf_5_.output_register_mode = "none";
                 
                 defparam hex6_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_5_.input_register_mode = "none";
    cycloneii_io hex6_obuf_4_ (.padio (hex6[4]), .datain (hex6_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_4_.operation_mode = "output";
                 
                 defparam hex6_obuf_4_.output_register_mode = "none";
                 
                 defparam hex6_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_4_.input_register_mode = "none";
    cycloneii_io hex6_obuf_3_ (.padio (hex6[3]), .datain (hex6_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_3_.operation_mode = "output";
                 
                 defparam hex6_obuf_3_.output_register_mode = "none";
                 
                 defparam hex6_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_3_.input_register_mode = "none";
    cycloneii_io hex6_obuf_2_ (.padio (hex6[2]), .datain (hex6_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_2_.operation_mode = "output";
                 
                 defparam hex6_obuf_2_.output_register_mode = "none";
                 
                 defparam hex6_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_2_.input_register_mode = "none";
    cycloneii_io hex6_obuf_1_ (.padio (hex6[1]), .datain (hex6_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_1_.operation_mode = "output";
                 
                 defparam hex6_obuf_1_.output_register_mode = "none";
                 
                 defparam hex6_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_1_.input_register_mode = "none";
    cycloneii_io hex6_obuf_0_ (.padio (hex6[0]), .datain (hex6_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_0_.operation_mode = "output";
                 
                 defparam hex6_obuf_0_.output_register_mode = "none";
                 
                 defparam hex6_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_0_.input_register_mode = "none";
    cycloneii_io hex5_obuf_6_ (.padio (hex5[6]), .datain (hex5_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_6_.operation_mode = "output";
                 
                 defparam hex5_obuf_6_.output_register_mode = "none";
                 
                 defparam hex5_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_6_.input_register_mode = "none";
    cycloneii_io hex5_obuf_5_ (.padio (hex5[5]), .datain (hex5_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_5_.operation_mode = "output";
                 
                 defparam hex5_obuf_5_.output_register_mode = "none";
                 
                 defparam hex5_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_5_.input_register_mode = "none";
    cycloneii_io hex5_obuf_4_ (.padio (hex5[4]), .datain (hex5_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_4_.operation_mode = "output";
                 
                 defparam hex5_obuf_4_.output_register_mode = "none";
                 
                 defparam hex5_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_4_.input_register_mode = "none";
    cycloneii_io hex5_obuf_3_ (.padio (hex5[3]), .datain (hex5_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_3_.operation_mode = "output";
                 
                 defparam hex5_obuf_3_.output_register_mode = "none";
                 
                 defparam hex5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_3_.input_register_mode = "none";
    cycloneii_io hex5_obuf_2_ (.padio (hex5[2]), .datain (hex5_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_2_.operation_mode = "output";
                 
                 defparam hex5_obuf_2_.output_register_mode = "none";
                 
                 defparam hex5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_2_.input_register_mode = "none";
    cycloneii_io hex5_obuf_1_ (.padio (hex5[1]), .datain (hex5_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_1_.operation_mode = "output";
                 
                 defparam hex5_obuf_1_.output_register_mode = "none";
                 
                 defparam hex5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_1_.input_register_mode = "none";
    cycloneii_io hex5_obuf_0_ (.padio (hex5[0]), .datain (hex5_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_0_.operation_mode = "output";
                 
                 defparam hex5_obuf_0_.output_register_mode = "none";
                 
                 defparam hex5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_0_.input_register_mode = "none";
    cycloneii_io hex4_obuf_6_ (.padio (hex4[6]), .datain (hex4_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_6_.operation_mode = "output";
                 
                 defparam hex4_obuf_6_.output_register_mode = "none";
                 
                 defparam hex4_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_6_.input_register_mode = "none";
    cycloneii_io hex4_obuf_5_ (.padio (hex4[5]), .datain (hex4_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_5_.operation_mode = "output";
                 
                 defparam hex4_obuf_5_.output_register_mode = "none";
                 
                 defparam hex4_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_5_.input_register_mode = "none";
    cycloneii_io hex4_obuf_4_ (.padio (hex4[4]), .datain (hex4_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_4_.operation_mode = "output";
                 
                 defparam hex4_obuf_4_.output_register_mode = "none";
                 
                 defparam hex4_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_4_.input_register_mode = "none";
    cycloneii_io hex4_obuf_3_ (.padio (hex4[3]), .datain (hex4_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_3_.operation_mode = "output";
                 
                 defparam hex4_obuf_3_.output_register_mode = "none";
                 
                 defparam hex4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_3_.input_register_mode = "none";
    cycloneii_io hex4_obuf_2_ (.padio (hex4[2]), .datain (hex4_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_2_.operation_mode = "output";
                 
                 defparam hex4_obuf_2_.output_register_mode = "none";
                 
                 defparam hex4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_2_.input_register_mode = "none";
    cycloneii_io hex4_obuf_1_ (.padio (hex4[1]), .datain (hex4_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_1_.operation_mode = "output";
                 
                 defparam hex4_obuf_1_.output_register_mode = "none";
                 
                 defparam hex4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_1_.input_register_mode = "none";
    cycloneii_io hex4_obuf_0_ (.padio (hex4[0]), .datain (hex4_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_0_.operation_mode = "output";
                 
                 defparam hex4_obuf_0_.output_register_mode = "none";
                 
                 defparam hex4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_0_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_6_ (.padio (hex3[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_6_.operation_mode = "output";
                 
                 defparam hex3_triBus6_6_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_6_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_6_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_5_ (.padio (hex3[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_5_.operation_mode = "output";
                 
                 defparam hex3_triBus6_5_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_5_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_5_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_4_ (.padio (hex3[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_4_.operation_mode = "output";
                 
                 defparam hex3_triBus6_4_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_4_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_4_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_3_ (.padio (hex3[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_3_.operation_mode = "output";
                 
                 defparam hex3_triBus6_3_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_3_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_3_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_2_ (.padio (hex3[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_2_.operation_mode = "output";
                 
                 defparam hex3_triBus6_2_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_2_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_2_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_1_ (.padio (hex3[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_1_.operation_mode = "output";
                 
                 defparam hex3_triBus6_1_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_1_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_1_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_0_ (.padio (hex3[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_0_.operation_mode = "output";
                 
                 defparam hex3_triBus6_0_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_0_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_0_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_6_ (.padio (hex2[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_6_.operation_mode = "output";
                 
                 defparam hex2_triBus5_6_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_6_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_6_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_5_ (.padio (hex2[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_5_.operation_mode = "output";
                 
                 defparam hex2_triBus5_5_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_5_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_5_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_4_ (.padio (hex2[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_4_.operation_mode = "output";
                 
                 defparam hex2_triBus5_4_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_4_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_4_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_3_ (.padio (hex2[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_3_.operation_mode = "output";
                 
                 defparam hex2_triBus5_3_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_3_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_3_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_2_ (.padio (hex2[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_2_.operation_mode = "output";
                 
                 defparam hex2_triBus5_2_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_2_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_2_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_1_ (.padio (hex2[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_1_.operation_mode = "output";
                 
                 defparam hex2_triBus5_1_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_1_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_1_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_0_ (.padio (hex2[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_0_.operation_mode = "output";
                 
                 defparam hex2_triBus5_0_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_0_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_0_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_6_ (.padio (hex1[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_6_.operation_mode = "output";
                 
                 defparam hex1_triBus4_6_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_6_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_6_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_5_ (.padio (hex1[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_5_.operation_mode = "output";
                 
                 defparam hex1_triBus4_5_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_5_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_5_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_4_ (.padio (hex1[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_4_.operation_mode = "output";
                 
                 defparam hex1_triBus4_4_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_4_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_4_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_3_ (.padio (hex1[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_3_.operation_mode = "output";
                 
                 defparam hex1_triBus4_3_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_3_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_3_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_2_ (.padio (hex1[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_2_.operation_mode = "output";
                 
                 defparam hex1_triBus4_2_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_2_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_2_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_1_ (.padio (hex1[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_1_.operation_mode = "output";
                 
                 defparam hex1_triBus4_1_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_1_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_1_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_0_ (.padio (hex1[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_0_.operation_mode = "output";
                 
                 defparam hex1_triBus4_0_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_0_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_0_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_6_ (.padio (hex0[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_6_.operation_mode = "output";
                 
                 defparam hex0_triBus3_6_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_6_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_6_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_5_ (.padio (hex0[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_5_.operation_mode = "output";
                 
                 defparam hex0_triBus3_5_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_5_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_5_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_4_ (.padio (hex0[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_4_.operation_mode = "output";
                 
                 defparam hex0_triBus3_4_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_4_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_4_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_3_ (.padio (hex0[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_3_.operation_mode = "output";
                 
                 defparam hex0_triBus3_3_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_3_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_3_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_2_ (.padio (hex0[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_2_.operation_mode = "output";
                 
                 defparam hex0_triBus3_2_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_2_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_2_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_1_ (.padio (hex0[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_1_.operation_mode = "output";
                 
                 defparam hex0_triBus3_1_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_1_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_1_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_0_ (.padio (hex0[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_0_.operation_mode = "output";
                 
                 defparam hex0_triBus3_0_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_0_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_0_.input_register_mode = "none";
    cycloneii_io clock_27_ibuf (.combout (clock_27_int), .padio (clock_27), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clock_27_ibuf.operation_mode = "input";
                 
                 defparam clock_27_ibuf.output_register_mode = "none";
                 
                 defparam clock_27_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clock_27_ibuf.oe_register_mode = "none";
                 
                 defparam clock_27_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clock_27_ibuf.input_register_mode = "none";
    cycloneii_io aud_xck_obuf (.padio (aud_xck), .datain (aud_xck_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam aud_xck_obuf.operation_mode = "output";
                 
                 defparam aud_xck_obuf.output_register_mode = "none";
                 
                 defparam aud_xck_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam aud_xck_obuf.oe_register_mode = "none";
                 
                 defparam aud_xck_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_xck_obuf.input_register_mode = "none";
    cycloneii_io aud_daclrck_obuf (.padio (aud_daclrck), .datain (
                 aud_adclrck_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam aud_daclrck_obuf.operation_mode = "output";
                 
                 defparam aud_daclrck_obuf.output_register_mode = "none";
                 
                 defparam aud_daclrck_obuf.tie_off_output_clock_enable = "false";
                 defparam aud_daclrck_obuf.oe_register_mode = "none";
                 
                 defparam aud_daclrck_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_daclrck_obuf.input_register_mode = "none";
    cycloneii_io aud_dacdat_obuf (.padio (aud_dacdat), .datain (aud_dacdat_dup0)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam aud_dacdat_obuf.operation_mode = "output";
                 
                 defparam aud_dacdat_obuf.output_register_mode = "none";
                 
                 defparam aud_dacdat_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam aud_dacdat_obuf.oe_register_mode = "none";
                 
                 defparam aud_dacdat_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_dacdat_obuf.input_register_mode = "none";
    cycloneii_io aud_adclrck_obuf (.padio (aud_adclrck), .datain (
                 aud_adclrck_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam aud_adclrck_obuf.operation_mode = "output";
                 
                 defparam aud_adclrck_obuf.output_register_mode = "none";
                 
                 defparam aud_adclrck_obuf.tie_off_output_clock_enable = "false";
                 defparam aud_adclrck_obuf.oe_register_mode = "none";
                 
                 defparam aud_adclrck_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_adclrck_obuf.input_register_mode = "none";
    cycloneii_lcell_comb ix51811z52923 (.combout (NOT_bit_position_0_), .dataa (
                         bit_position[0]), .datab (1'b1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix51811z52923.lut_mask = 16'h5555;
    cycloneii_lcell_comb ix24999z52930 (.combout (nx24999z7), .dataa (
                         bit_position[1]), .datab (audio_out_9_), .datac (
                         audio_out_8_), .datad (bit_position[0]), .cin (1'b0)) ;
                         
                         defparam ix24999z52930.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52926 (.combout (nx24999z3), .dataa (
                         bit_position[1]), .datab (audio_out_5_), .datac (
                         audio_out_4_), .datad (bit_position[0]), .cin (1'b0)) ;
                         
                         defparam ix24999z52926.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52928 (.combout (nx24999z5), .dataa (
                         bit_position[1]), .datab (audio_out_1_), .datac (
                         audio_out_0_), .datad (bit_position[0]), .cin (1'b0)) ;
                         
                         defparam ix24999z52928.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52924 (.combout (nx24999z1), .dataa (
                         bit_position[3]), .datab (nx24999z2), .datac (nx24999z4
                         ), .datad (bit_position[2]), .cin (1'b0)) ;
                         
                         defparam ix24999z52924.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52929 (.combout (nx24999z6), .dataa (nx24999z7)
                         , .datab (audio_out_10_), .datac (audio_out_12_), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52929.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52925 (.combout (nx24999z2), .dataa (nx24999z3)
                         , .datab (audio_out_6_), .datac (audio_out_7_), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52925.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52927 (.combout (nx24999z4), .dataa (nx24999z5)
                         , .datab (audio_out_2_), .datac (audio_out_3_), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52927.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52923 (.combout (aud_dacdat_dup0), .dataa (
                         nx24999z1), .datab (nx24999z6), .datac (audio_out_12_)
                         , .datad (bit_position[3]), .cin (1'b0)) ;
                         
                         defparam ix24999z52923.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix50205z52923 (.combout (nx50205z1), .dataa (nx50205z2)
                         , .datab (aud_adclrck_dup0), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50205z52923.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix52616z52925 (.combout (nx52616z2), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix52616z52925.lut_mask = 16'hc320;
    cycloneii_lcell_comb ix55607z52924 (.combout (nx55607z1), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix55607z52924.lut_mask = 16'h2900;
    cycloneii_lcell_comb ix32682z52925 (.combout (nx32682z2), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix32682z52925.lut_mask = 16'h2004;
    cycloneii_lcell_comb ix10101z52925 (.combout (nx10101z2), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix10101z52925.lut_mask = 16'h2004;
    cycloneii_lcell_comb ix4119z52939 (.combout (nx4119z16), .dataa (nx4119z17)
                         , .datab (nx4119z18), .datac (sw_int_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix4119z52939.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38664z52936 (.combout (nx38664z13), .dataa (sw_int_3_
                         ), .datab (sw_int_1_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38664z52936.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix17637z52924 (.combout (nx17637z1), .dataa (nx17637z2)
                         , .datab (sw_int_6_), .datac (sw_int_4_), .datad (
                         sw_int_3_), .cin (1'b0)) ;
                         
                         defparam ix17637z52924.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix10101z52924 (.combout (nx10101z1), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix10101z52924.lut_mask = 16'h0900;
    cycloneii_lcell_comb ix4119z52934 (.combout (nx4119z11), .dataa (nx4119z12)
                         , .datab (nx4119z13), .datac (sw_int_6_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix4119z52934.lut_mask = 16'haa0c;
    cycloneii_lcell_comb ix4119z52930 (.combout (nx4119z7), .dataa (nx4119z8), .datab (
                         sw_int_6_), .datac (sw_int_5_), .datad (sw_int_4_), .cin (
                         1'b0)) ;
                         defparam ix4119z52930.lut_mask = 16'h3020;
    cycloneii_lcell_comb ix4119z52926 (.combout (nx4119z3), .dataa (nx4119z4), .datab (
                         sw_int_5_), .datac (sw_int_4_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix4119z52926.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix32682z52924 (.combout (nx32682z1), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix32682z52924.lut_mask = 16'h0900;
    cycloneii_lcell_comb ix38664z52929 (.combout (nx38664z6), .dataa (nx38664z7)
                         , .datab (sw_int_3_), .datac (sw_int_2_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix38664z52929.lut_mask = 16'h880f;
    cycloneii_lcell_comb ix50205z52926 (.combout (nx50205z4), .dataa (
                         u_audio_dac_lrck_1x_div[5]), .datab (
                         u_audio_dac_lrck_1x_div[4]), .datac (
                         u_audio_dac_lrck_1x_div[3]), .datad (
                         u_audio_dac_lrck_1x_div[2]), .cin (1'b0)) ;
                         
                         defparam ix50205z52926.lut_mask = 16'h7fff;
    cycloneii_lcell_comb ix50205z52925 (.combout (nx50205z3), .dataa (
                         u_audio_dac_lrck_1x_div[1]), .datab (
                         u_audio_dac_lrck_1x_div[0]), .datac (nx50205z4), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50205z52925.lut_mask = 16'hf7f7;
    cycloneii_lcell_comb ix31099z52924 (.combout (nx31099z2), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix31099z52924.lut_mask = 16'hf8ff;
    cycloneii_lcell_comb ix31099z52923 (.combout (nx31099z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix31099z52923.lut_mask = 16'h1300;
    cycloneii_lcell_comb ix30102z52924 (.combout (nx30102z2), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix30102z52924.lut_mask = 16'he8ff;
    cycloneii_lcell_comb ix30102z52923 (.combout (nx30102z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (key_int_0_), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30102z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix50814z52923 (.combout (nx50814z1), .dataa (
                         bit_position[1]), .datab (bit_position[0]), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50814z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix49817z52923 (.combout (nx49817z1), .dataa (
                         bit_position[2]), .datab (bit_position[1]), .datac (
                         bit_position[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49817z52923.lut_mask = 16'h6a6a;
    cycloneii_lcell_comb ix48820z52923 (.combout (nx48820z1), .dataa (
                         bit_position[3]), .datab (bit_position[2]), .datac (
                         bit_position[1]), .datad (bit_position[0]), .cin (1'b0)
                         ) ;
                         defparam ix48820z52923.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix15494z52923 (.combout (nx15494z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (aud_bclk), 
                         .cin (1'b0)) ;
                         
                         defparam ix15494z52923.lut_mask = 16'h57a8;
    cycloneii_lcell_comb ix50205z52924 (.combout (nx50205z2), .dataa (
                         u_audio_dac_lrck_1x_div[8]), .datab (
                         u_audio_dac_lrck_1x_div[7]), .datac (
                         u_audio_dac_lrck_1x_div[6]), .datad (nx50205z3), .cin (
                         1'b0)) ;
                         defparam ix50205z52924.lut_mask = 16'h1511;
    cycloneii_lcell_comb ix48238z52923 (.combout (nx48238z1), .dataa (nx50205z2)
                         , .datab (key_int_0_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix48238z52923.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix52616z52924 (.combout (nx52616z1), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix52616z52924.lut_mask = 16'h0404;
    cycloneii_lcell_comb ix38664z52934 (.combout (rtlc_rdout_n1[4]), .dataa (
                         nx38664z12), .datab (sw_int_4_), .datac (sw_int_0_), .datad (
                         nx38664z13), .cin (1'b0)) ;
                         
                         defparam ix38664z52934.lut_mask = 16'hc3a3;
    cycloneii_lcell_comb ix38664z52931 (.combout (rtlc_rdout_n1[5]), .dataa (
                         nx38664z9), .datab (nx38664z10), .datac (sw_int_4_), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38664z52931.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38664z52927 (.combout (rtlc_rdout_n1[6]), .dataa (
                         nx38664z5), .datab (sw_int_4_), .datac (nx38664z6), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38664z52927.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix38664z52924 (.combout (rtlc_rdout_n1[7]), .dataa (
                         nx38664z2), .datab (nx38664z3), .datac (sw_int_4_), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38664z52924.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix4119z52937 (.combout (rtlc_rdout_n1[8]), .dataa (
                         nx4119z15), .datab (sw_int_3_), .datac (nx4119z16), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix4119z52937.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix4119z52932 (.combout (rtlc_rdout_n1[9]), .dataa (
                         nx4119z10), .datab (sw_int_5_), .datac (nx4119z11), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix4119z52932.lut_mask = 16'he2e2;
    cycloneii_lcell_comb ix4119z52928 (.combout (rtlc_rdout_n1[10]), .dataa (
                         nx4119z6), .datab (sw_int_6_), .datac (nx4119z7), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix4119z52928.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix4119z52924 (.combout (rtlc_rdout_n1[11]), .dataa (
                         nx4119z2), .datab (sw_int_6_), .datac (sw_int_3_), .datad (
                         nx4119z3), .cin (1'b0)) ;
                         
                         defparam ix4119z52924.lut_mask = 16'hc808;
    cycloneii_lcell_comb ix17637z52923 (.combout (hex7_dup0[5]), .dataa (
                         sw_int_6_), .datab (sw_int_5_), .datac (sw_int_4_), .datad (
                         nx17637z1), .cin (1'b0)) ;
                         
                         defparam ix17637z52923.lut_mask = 16'hff80;
    cycloneii_lcell_comb ix10101z52923 (.combout (hex6_dup0[0]), .dataa (
                         nx10101z1), .datab (nx10101z2), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix10101z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix9104z52923 (.combout (hex6_dup0[1]), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix9104z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix8107z52923 (.combout (hex6_dup0[2]), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix8107z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix7110z52923 (.combout (hex6_dup0[3]), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix7110z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix6113z52923 (.combout (hex6_dup0[4]), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix6113z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix5116z52923 (.combout (hex6_dup0[5]), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix5116z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix4119z52923 (.combout (hex6_dup0[6]), .dataa (
                         rtlc_rdout_n1[11]), .datab (rtlc_rdout_n1[10]), .datac (
                         rtlc_rdout_n1[9]), .datad (rtlc_rdout_n1[8]), .cin (
                         1'b0)) ;
                         defparam ix4119z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix32682z52923 (.combout (hex5_dup0[0]), .dataa (
                         nx32682z1), .datab (nx32682z2), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix32682z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix33679z52923 (.combout (hex5_dup0[1]), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix33679z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix34676z52923 (.combout (hex5_dup0[2]), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix34676z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix35673z52923 (.combout (hex5_dup0[3]), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix35673z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix36670z52923 (.combout (hex5_dup0[4]), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix36670z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix37667z52923 (.combout (hex5_dup0[5]), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix37667z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix38664z52923 (.combout (hex5_dup0[6]), .dataa (
                         rtlc_rdout_n1[7]), .datab (rtlc_rdout_n1[6]), .datac (
                         rtlc_rdout_n1[5]), .datad (rtlc_rdout_n1[4]), .cin (
                         1'b0)) ;
                         defparam ix38664z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix55607z52923 (.combout (hex4_dup0[0]), .dataa (
                         rtlc_rdout_n1[2]), .datab (rtlc_rdout_n1[0]), .datac (
                         nx52616z1), .datad (nx55607z1), .cin (1'b0)) ;
                         
                         defparam ix55607z52923.lut_mask = 16'hff20;
    cycloneii_lcell_comb ix54610z52923 (.combout (hex4_dup0[1]), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix54610z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix53613z52923 (.combout (hex4_dup0[2]), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix53613z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix52616z52923 (.combout (hex4_dup0[3]), .dataa (
                         rtlc_rdout_n1[2]), .datab (rtlc_rdout_n1[0]), .datac (
                         nx52616z1), .datad (nx52616z2), .cin (1'b0)) ;
                         
                         defparam ix52616z52923.lut_mask = 16'hff20;
    cycloneii_lcell_comb ix51619z52923 (.combout (hex4_dup0[4]), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix51619z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix50622z52923 (.combout (hex4_dup0[5]), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix50622z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix49625z52923 (.combout (hex4_dup0[6]), .dataa (
                         rtlc_rdout_n1[3]), .datab (rtlc_rdout_n1[2]), .datac (
                         rtlc_rdout_n1[1]), .datad (rtlc_rdout_n1[0]), .cin (
                         1'b0)) ;
                         defparam ix49625z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix32096z52923 (.combout (nx32096z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix32096z52923.lut_mask = 16'h0700;
endmodule


module modgen_counter_9_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

    input clock ;
    output [8:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [8:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx59247z16, nx52268z1, nx59247z14, nx53265z1, nx59247z12, 
         nx54262z1, nx59247z10, nx55259z1, nx59247z8, nx56256z1, nx59247z6, 
         nx57253z1, nx59247z4, nx58250z1, nx59247z2, nx59247z1, 
         nx_modgen_counter_9_0_vcc_net;
    wire [55:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix59247z52930 (.combout (nx53265z1), .cout (nx59247z12)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z14)) ;
                         
                         defparam ix59247z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52930.sum_lutc_input = "cin";
    assign nx_modgen_counter_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix59247z52923 (.combout (nx59247z1), .dataa (q[8]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z2)) ;
                         
                         defparam ix59247z52923.lut_mask = 16'h5a00;
                         
                         defparam ix59247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52925 (.combout (nx58250z1), .cout (nx59247z2)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z4)) ;
                         
                         defparam ix59247z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52926 (.combout (nx57253z1), .cout (nx59247z4)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z6)) ;
                         
                         defparam ix59247z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52931 (.combout (nx52268z1), .cout (nx59247z14)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z16)) ;
                         
                         defparam ix59247z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52927 (.combout (nx56256z1), .cout (nx59247z6)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z8)) ;
                         
                         defparam ix59247z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52928 (.combout (nx55259z1), .cout (nx59247z8)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z10)) ;
                         
                         defparam ix59247z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52929 (.combout (nx54262z1), .cout (nx59247z10)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z12)) ;
                         
                         defparam ix59247z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52932 (.combout (nx51271z1), .cout (nx59247z16)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix59247z52932.lut_mask = 16'h55aa;
endmodule


module add_9_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z23, nx45949z20, nx45949z17, nx45949z14, nx45949z11, nx45949z8, 
         nx45949z5, nx45949z3, nx_add_9_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .dataa (a[8]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_0_vcc_net), .cin (
                         nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5a00;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         a[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z5)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z5), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z8)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z8), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z11)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z11), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z14)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z14), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z17)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z17), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z20)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z20), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z23)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z23), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h99ee;
endmodule


module i2c_av_config_notri ( p_u0_not_sdo, p_i2c_sclk, p_i2c_sdat, p_clk, p_sdo
                              ) ;

    output p_u0_not_sdo ;
    output p_i2c_sclk ;
    input p_i2c_sdat ;
    input p_clk ;
    output p_sdo ;

    wire [15:0]cont;
    wire m_i2c_clk_div_5_, m_i2c_clk_div_4_, m_i2c_clk_div_3_, m_i2c_clk_div_2_, 
         reset_n, m_i2c_clk_div_12_, m_i2c_clk_div_11_, m_i2c_clk_div_10_, 
         m_i2c_clk_div_9_, m_i2c_clk_div_6_, m_i2c_clk_div_7_, m_i2c_clk_div_8_, 
         m_i2c_ctrl_clk, nx23875z1, nx2692z2, not_reset_n, nx35560z1, nx2692z1, 
         nx17807z2, nx35560z2, nx35560z3, nx35560z4, nx2692z3, nx2692z4, 
         nx17807z1, nx2692z5, nx51161z1;
    wire [107:0] xmplr_dummy ;




    modgen_counter_16_0 modgen_counter_cont (.clock (p_clk), .q ({cont[15],
                        cont[14],cont[13],cont[12],cont[11],cont[10],cont[9],
                        cont[8],cont[7],cont[6],cont[5],cont[4],cont[3],cont[2],
                        cont[1],cont[0]}), .cnt_en (nx35560z1)) ;
    modgen_counter_16_1 modgen_counter_m_i2c_clk_div (.clock (p_clk), .q ({
                        xmplr_dummy [0],xmplr_dummy [1],xmplr_dummy [2],
                        m_i2c_clk_div_12_,m_i2c_clk_div_11_,m_i2c_clk_div_10_,
                        m_i2c_clk_div_9_,m_i2c_clk_div_8_,m_i2c_clk_div_7_,
                        m_i2c_clk_div_6_,m_i2c_clk_div_5_,m_i2c_clk_div_4_,
                        m_i2c_clk_div_3_,m_i2c_clk_div_2_,xmplr_dummy [3],
                        xmplr_dummy [4]}), .sclear (nx23875z1)) ;
    i2c_ctrl_notri u0 (.p_i2c_sclk (p_i2c_sclk), .p_reset_rtlc_164_and_32 ({
                   reset_n}), .p_clock (m_i2c_ctrl_clk), .p_sdo (p_sdo), .p_p_clk (
                   p_clk), .p_not_reset_n (not_reset_n), .px362 (nx51161z1)) ;
    assign not_reset_n = ~reset_n ;
    cycloneii_lcell_ff reg_reset_n (.regout (reset_n), .datain (nx17807z1), .sdata (
                       1'b0), .clk (p_clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_m_i2c_ctrl_clk (.regout (m_i2c_ctrl_clk), .datain (
                       nx2692z1), .sdata (1'b0), .clk (p_clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (not_reset_n), .sload (1'b0)) ;
    cycloneii_lcell_comb ix2692z52927 (.combout (nx2692z5), .dataa (
                         m_i2c_clk_div_11_), .datab (m_i2c_clk_div_10_), .datac (
                         m_i2c_clk_div_9_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2692z52927.lut_mask = 16'ha8a8;
    cycloneii_lcell_comb ix17807z52923 (.combout (nx17807z1), .dataa (nx17807z2)
                         , .datab (nx35560z2), .datac (nx35560z3), .datad (
                         nx35560z4), .cin (1'b0)) ;
                         
                         defparam ix17807z52923.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix2692z52926 (.combout (nx2692z4), .dataa (
                         m_i2c_clk_div_11_), .datab (m_i2c_clk_div_6_), .datac (
                         m_i2c_clk_div_7_), .datad (m_i2c_clk_div_8_), .cin (
                         1'b0)) ;
                         defparam ix2692z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix2692z52925 (.combout (nx2692z3), .dataa (
                         m_i2c_clk_div_5_), .datab (m_i2c_clk_div_4_), .datac (
                         m_i2c_clk_div_3_), .datad (m_i2c_clk_div_2_), .cin (
                         1'b0)) ;
                         defparam ix2692z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix35560z52926 (.combout (nx35560z4), .dataa (cont[12])
                         , .datab (cont[13]), .datac (cont[14]), .datad (
                         cont[15]), .cin (1'b0)) ;
                         
                         defparam ix35560z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix35560z52925 (.combout (nx35560z3), .dataa (cont[8]), 
                         .datab (cont[9]), .datac (cont[10]), .datad (cont[11])
                         , .cin (1'b0)) ;
                         
                         defparam ix35560z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix35560z52924 (.combout (nx35560z2), .dataa (cont[4]), 
                         .datab (cont[5]), .datac (cont[6]), .datad (cont[7]), .cin (
                         1'b0)) ;
                         defparam ix35560z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix17807z52924 (.combout (nx17807z2), .dataa (cont[0]), 
                         .datab (cont[1]), .datac (cont[2]), .datad (cont[3]), .cin (
                         1'b0)) ;
                         defparam ix17807z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix2692z52923 (.combout (nx2692z1), .dataa (nx2692z2), .datab (
                         m_i2c_ctrl_clk), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix2692z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix2692z52924 (.combout (nx2692z2), .dataa (nx2692z3), .datab (
                         m_i2c_clk_div_12_), .datac (nx2692z4), .datad (nx2692z5
                         ), .cin (1'b0)) ;
                         
                         defparam ix2692z52924.lut_mask = 16'hffec;
    cycloneii_lcell_comb ix23875z52923 (.combout (nx23875z1), .dataa (reset_n), 
                         .datab (nx2692z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix23875z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix35560z52923 (.combout (nx35560z1), .dataa (nx17807z2)
                         , .datab (nx35560z2), .datac (nx35560z3), .datad (
                         nx35560z4), .cin (1'b0)) ;
                         
                         defparam ix35560z52923.lut_mask = 16'h7fff;
    cycloneii_lcell_comb ix51161z52923 (.combout (nx51161z1), .dataa (reset_n), 
                         .datab (m_i2c_ctrl_clk), .datac (nx2692z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix51161z52923.lut_mask = 16'h2828;
endmodule


module i2c_ctrl_notri ( p_i2c_sdat, p_finish_xfr, p_i2c_data_4, p_i2c_data_3, 
                        p_i2c_data_2, p_i2c_data_1, p_i2c_data_5, p_i2c_sclk, 
                        p_start_xfr, p_reset_rtlc_164_and_32, p_ack, p_not_sdo, 
                        p_clock, p_sdo, p_p_clk, p_m_i2c_ctrl_clk_dup_364, 
                        p_not_reset_n, px362 ) ;

    input p_i2c_sdat ;
    output p_finish_xfr ;
    input [2:0]p_i2c_data_4 ;
    input [4:4]p_i2c_data_3 ;
    input [7:6]p_i2c_data_2 ;
    input [12:9]p_i2c_data_1 ;
    input [22:21]p_i2c_data_5 ;
    output p_i2c_sclk ;
    input p_start_xfr ;
    input [2:2]p_reset_rtlc_164_and_32 ;
    output p_ack ;
    output p_not_sdo ;
    input p_clock ;
    output p_sdo ;
    input p_p_clk ;
    input p_m_i2c_ctrl_clk_dup_364 ;
    input p_not_reset_n ;
    input px362 ;

    wire sd_counter_4_, sd_counter_3_, sd_counter_2_, sd_counter_1_, 
         sd_counter_0_;
    wire [4:0]sdo_5n5s2;
    wire sd_counter_5_, nx41315z14, nx41315z16, nx41315z21, nx41315z12, 
         nx41315z13, nx41315z17, sdo_5n5s2f1_0_, sdo_5n5s2f1_1_, nx41315z4, 
         nx7286z1, nx41315z19, nx44942z2, nx22137z1, nx44942z7, nx41315z2, 
         nx44942z4, nx44942z5, nx22137z2, nx44942z8, nx41315z15, nx41315z8, 
         nx41315z7, nx44942z6, nx41315z5, nx41315z10, nx41315z3, nx41315z22, 
         nx43379z2, nx43379z3, nx41315z9, nx41315z11, nx41315z18, nx41315z6, 
         nx7286z2, nx43379z4, nx51857z1, nx41315z1, nx43379z1, nx44942z1, 
         nx44942z3, nx41315z20;
    wire [124:0] xmplr_dummy ;




    sub_5_0 sdo_sub5_5i2 (.a ({xmplr_dummy [0],xmplr_dummy [1],nx22137z1,
            sdo_5n5s2f1_1_,sdo_5n5s2f1_0_}), .b ({sd_counter_4_,sd_counter_3_,
            sd_counter_2_,sd_counter_1_,sd_counter_0_}), .d ({sdo_5n5s2[4],
            sdo_5n5s2[3],sdo_5n5s2[2],sdo_5n5s2[1],sdo_5n5s2[0]})) ;
    modgen_counter_6_0 modgen_counter_sd_counter (.clock (p_clock), .q ({
                       sd_counter_5_,sd_counter_4_,sd_counter_3_,sd_counter_2_,
                       sd_counter_1_,sd_counter_0_}), .sload (p_not_reset_n), .cnt_en (
                       nx7286z1), .p_p_reset (p_reset_rtlc_164_and_32[2]), .p_p_clk (
                       p_p_clk), .px765 (px362), .p_p_clock (p_clock)) ;
    assign p_sdo = ~nx51857z1 ;
    cycloneii_lcell_ff reg_sdo (.regout (nx51857z1), .datain (nx41315z1), .sdata (
                       1'b0), .clk (p_p_clk), .ena (nx41315z19), .aclr (1'b0), .sclr (
                       p_not_reset_n), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sclk (.regout (nx43379z1), .datain (nx44942z1), .sdata (
                       1'b0), .clk (p_p_clk), .ena (nx44942z2), .aclr (1'b0), .sclr (
                       p_not_reset_n), .sload (1'b0)) ;
    cycloneii_lcell_comb ix43379z52926 (.combout (nx43379z4), .dataa (
                         sd_counter_3_), .datab (sd_counter_1_), .datac (
                         sd_counter_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix43379z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix7286z52924 (.combout (nx7286z2), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_1_), .cin (1'b0)) ;
                         
                         defparam ix7286z52924.lut_mask = 16'h7fff;
    cycloneii_lcell_comb ix41315z52928 (.combout (nx41315z6), .dataa (
                         sd_counter_4_), .datab (sd_counter_1_), .datac (
                         sd_counter_5_), .datad (nx44942z5), .cin (1'b0)) ;
                         
                         defparam ix41315z52928.lut_mask = 16'h0504;
    cycloneii_lcell_comb ix41315z52940 (.combout (nx41315z18), .dataa (
                         sdo_5n5s2[1]), .datab (sdo_5n5s2[2]), .datac (
                         sdo_5n5s2[4]), .datad (sdo_5n5s2[0]), .cin (1'b0)) ;
                         
                         defparam ix41315z52940.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix41315z52933 (.combout (nx41315z11), .dataa (
                         nx41315z12), .datab (nx41315z13), .datac (nx41315z15), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52933.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix43379z52925 (.combout (nx43379z3), .dataa (
                         sd_counter_4_), .datab (sd_counter_2_), .datac (
                         sd_counter_5_), .datad (nx43379z4), .cin (1'b0)) ;
                         
                         defparam ix43379z52925.lut_mask = 16'h040c;
    cycloneii_lcell_comb ix43379z52924 (.combout (nx43379z2), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_5_), .cin (1'b0)) ;
                         
                         defparam ix43379z52924.lut_mask = 16'h000e;
    cycloneii_lcell_comb ix41315z52944 (.combout (nx41315z22), .dataa (
                         nx41315z14), .datab (sd_counter_0_), .datac (nx44942z7)
                         , .datad (nx41315z15), .cin (1'b0)) ;
                         
                         defparam ix41315z52944.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix41315z52925 (.combout (nx41315z3), .dataa (nx41315z4)
                         , .datab (nx22137z1), .datac (nx41315z5), .datad (
                         nx41315z6), .cin (1'b0)) ;
                         
                         defparam ix41315z52925.lut_mask = 16'hff74;
    cycloneii_lcell_comb ix41315z52927 (.combout (nx41315z5), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (
                         nx44942z4), .datad (nx43379z4), .cin (1'b0)) ;
                         
                         defparam ix41315z52927.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix44942z52928 (.combout (nx44942z6), .dataa (
                         p_reset_rtlc_164_and_32[2]), .datab (sd_counter_5_), .datac (
                         nx44942z7), .datad (nx44942z8), .cin (1'b0)) ;
                         
                         defparam ix44942z52928.lut_mask = 16'h5557;
    cycloneii_lcell_comb ix41315z52929 (.combout (nx41315z7), .dataa (
                         sdo_5n5s2[1]), .datab (nx41315z2), .datac (nx41315z8), 
                         .datad (nx41315z10), .cin (1'b0)) ;
                         
                         defparam ix41315z52929.lut_mask = 16'hf8f0;
    cycloneii_lcell_comb ix41315z52930 (.combout (nx41315z8), .dataa (
                         sdo_5n5s2[3]), .datab (nx41315z3), .datac (nx41315z9), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52930.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix41315z52937 (.combout (nx41315z15), .dataa (
                         nx41315z16), .datab (nx41315z17), .datac (sd_counter_4_
                         ), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix41315z52937.lut_mask = 16'hccce;
    cycloneii_lcell_comb ix44942z52930 (.combout (nx44942z8), .dataa (
                         sd_counter_4_), .datab (sd_counter_2_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52930.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix22137z52926 (.combout (nx22137z2), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (
                         sd_counter_1_), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix22137z52926.lut_mask = 16'ha888;
    cycloneii_lcell_comb ix44942z52927 (.combout (nx44942z5), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52927.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix44942z52926 (.combout (nx44942z4), .dataa (
                         sd_counter_4_), .datab (sd_counter_5_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52926.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix41315z52924 (.combout (nx41315z2), .dataa (
                         sdo_5n5s2[3]), .datab (nx41315z3), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52924.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix44942z52929 (.combout (nx44942z7), .dataa (
                         sd_counter_3_), .datab (sd_counter_1_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52929.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix22137z52923 (.combout (nx22137z1), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_5_), .cin (1'b0)) ;
                         
                         defparam ix22137z52923.lut_mask = 16'hffa8;
    cycloneii_lcell_comb ix44942z52925 (.combout (nx44942z3), .dataa (
                         sd_counter_0_), .datab (nx44942z4), .datac (nx44942z5)
                         , .datad (nx44942z6), .cin (1'b0)) ;
                         
                         defparam ix44942z52925.lut_mask = 16'hff01;
    cycloneii_lcell_comb ix41315z52942 (.combout (nx41315z20), .dataa (
                         nx41315z21), .datab (nx41315z4), .datac (
                         p_reset_rtlc_164_and_32[2]), .datad (nx41315z22), .cin (
                         1'b0)) ;
                         defparam ix41315z52942.lut_mask = 16'h5f1f;
    cycloneii_lcell_comb ix7286z52923 (.combout (nx7286z1), .dataa (
                         sd_counter_0_), .datab (sd_counter_5_), .datac (
                         nx7286z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix7286z52923.lut_mask = 16'hf7f7;
    cycloneii_lcell_comb ix41315z52926 (.combout (nx41315z4), .dataa (
                         sd_counter_5_), .datab (nx7286z2), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52926.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix22137z52925 (.combout (sdo_5n5s2f1_0_), .dataa (
                         sd_counter_4_), .datab (sd_counter_5_), .datac (
                         nx44942z5), .datad (nx22137z2), .cin (1'b0)) ;
                         
                         defparam ix22137z52925.lut_mask = 16'h1302;
    cycloneii_lcell_comb ix41315z52923 (.combout (nx41315z1), .dataa (nx41315z2)
                         , .datab (nx41315z7), .datac (nx41315z11), .datad (
                         nx41315z18), .cin (1'b0)) ;
                         
                         defparam ix41315z52923.lut_mask = 16'h0103;
    cycloneii_lcell_comb ix44942z52923 (.combout (nx44942z1), .dataa (
                         sd_counter_1_), .datab (sd_counter_0_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix41315z52939 (.combout (nx41315z17), .dataa (
                         nx41315z14), .datab (sd_counter_3_), .datac (
                         sd_counter_1_), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix41315z52939.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix41315z52935 (.combout (nx41315z13), .dataa (
                         nx41315z14), .datab (sd_counter_3_), .datac (
                         sd_counter_1_), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix41315z52935.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix41315z52934 (.combout (nx41315z12), .dataa (
                         sd_counter_2_), .datab (sd_counter_0_), .datac (
                         nx44942z7), .datad (nx44942z4), .cin (1'b0)) ;
                         
                         defparam ix41315z52934.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix43379z52923 (.combout (p_i2c_sclk), .dataa (p_clock)
                         , .datab (nx43379z1), .datac (nx43379z2), .datad (
                         nx43379z3), .cin (1'b0)) ;
                         
                         defparam ix43379z52923.lut_mask = 16'h7773;
    cycloneii_lcell_comb ix41315z52943 (.combout (nx41315z21), .dataa (
                         sd_counter_1_), .datab (sd_counter_0_), .datac (
                         nx44942z4), .datad (nx44942z5), .cin (1'b0)) ;
                         
                         defparam ix41315z52943.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix41315z52938 (.combout (nx41315z16), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (
                         sd_counter_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52938.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix41315z52936 (.combout (nx41315z14), .dataa (
                         sd_counter_4_), .datab (sd_counter_2_), .datac (
                         sd_counter_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52936.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix22137z52924 (.combout (sdo_5n5s2f1_1_), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_5_), .cin (1'b0)) ;
                         
                         defparam ix22137z52924.lut_mask = 16'h0057;
    cycloneii_lcell_comb ix41315z52932 (.combout (nx41315z10), .dataa (
                         sdo_5n5s2[4]), .datab (sdo_5n5s2[2]), .datac (
                         sdo_5n5s2[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52932.lut_mask = 16'h1212;
    cycloneii_lcell_comb ix41315z52931 (.combout (nx41315z9), .dataa (
                         sdo_5n5s2[2]), .datab (sdo_5n5s2[1]), .datac (
                         sdo_5n5s2[4]), .datad (sdo_5n5s2[0]), .cin (1'b0)) ;
                         
                         defparam ix41315z52931.lut_mask = 16'h2022;
    cycloneii_lcell_comb ix41315z52941 (.combout (nx41315z19), .dataa (
                         nx41315z20), .datab (p_clock), .datac (px362), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52941.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix44942z52924 (.combout (nx44942z2), .dataa (nx44942z3)
                         , .datab (p_clock), .datac (px362), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44942z52924.lut_mask = 16'h2020;
endmodule


module modgen_counter_6_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_p_reset, p_p_clk, 
                            p_m_i2c_ctrl_clk_dup_364, px765, p_p_clock ) ;

    input clock ;
    output [5:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [5:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    input p_p_reset ;
    input p_p_clk ;
    input p_m_i2c_ctrl_clk_dup_364 ;
    input px765 ;
    input p_p_clock ;

    wire nx55259z3, nx51271z1, nx56256z10, nx52268z1, nx56256z8, nx53265z1, 
         nx56256z6, nx54262z1, nx56256z4, nx55259z1, nx56256z2, nx56256z1, 
         nx56256z12, nx55259z2, nx54262z2, nx53265z2, nx52268z2, nx51271z2, 
         nx_modgen_counter_6_0_vcc_net;
    wire [27:0] xmplr_dummy ;




    assign nx56256z12 = 1 ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       nx56256z12), .clk (p_p_clk), .ena (nx55259z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (sload)) ;
    assign nx55259z2 = 1 ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       nx55259z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx54262z2 = 1 ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       nx54262z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx53265z2 = 1 ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       nx53265z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx52268z2 = 1 ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       nx52268z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx51271z2 = 1 ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       nx51271z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    cycloneii_lcell_comb ix56256z52927 (.combout (nx53265z1), .cout (nx56256z6)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z8)) ;
                         
                         defparam ix56256z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52927.sum_lutc_input = "cin";
    assign nx_modgen_counter_6_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix56256z52928 (.combout (nx52268z1), .cout (nx56256z8)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z10)) ;
                         
                         defparam ix56256z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52923 (.combout (nx56256z1), .dataa (q[5]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z2)) ;
                         
                         defparam ix56256z52923.lut_mask = 16'h5a00;
                         
                         defparam ix56256z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52925 (.combout (nx55259z1), .cout (nx56256z2)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z4)) ;
                         
                         defparam ix56256z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52926 (.combout (nx54262z1), .cout (nx56256z4)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z6)) ;
                         
                         defparam ix56256z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52929 (.combout (nx51271z1), .cout (nx56256z10)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix56256z52929.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix55259z52924 (.combout (nx55259z3), .dataa (p_p_reset)
                         , .datab (cnt_en), .datac (p_p_clock), .datad (px765), 
                         .cin (1'b0)) ;
                         
                         defparam ix55259z52924.lut_mask = 16'h0d00;
endmodule


module sub_5_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [4:0]a ;
    input [4:0]b ;
    output [4:0]d ;
    output cout ;

    wire nx41961z11, nx41961z8, nx41961z5, nx41961z3, nx_sub_5_0_vcc_net;
    wire [8:0] xmplr_dummy ;




    cycloneii_lcell_comb ix41961z52923 (.combout (d[4]), .dataa (b[4]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_5_0_vcc_net), .cin (
                         nx41961z3)) ;
                         
                         defparam ix41961z52923.lut_mask = 16'h5a00;
                         
                         defparam ix41961z52923.sum_lutc_input = "cin";
    assign nx_sub_5_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix41961z52925 (.combout (d[3]), .cout (nx41961z3), .dataa (
                         b[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (nx41961z5)) ;
                         
                         defparam ix41961z52925.lut_mask = 16'h5af5;
                         
                         defparam ix41961z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix41961z52926 (.combout (d[2]), .cout (nx41961z5), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (nx41961z8)) ;
                         
                         defparam ix41961z52926.lut_mask = 16'h69d4;
                         
                         defparam ix41961z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix41961z52927 (.combout (d[1]), .cout (nx41961z8), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (nx41961z11)) ;
                         
                         defparam ix41961z52927.lut_mask = 16'h69d4;
                         
                         defparam ix41961z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix41961z52928 (.combout (d[0]), .cout (nx41961z11), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix41961z52928.lut_mask = 16'h66bb;
endmodule


module modgen_counter_16_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx19090z23, nx19090z25, nx51271z1, nx19090z24, nx52268z1, nx19090z22, 
         nx53265z1, nx19090z20, nx54262z1, nx19090z18, nx55259z1, nx19090z16, 
         nx56256z1, nx19090z14, nx57253z1, nx19090z12, nx58250z1, nx19090z10, 
         nx59247z1, nx19090z8, nx60244z1, nx19090z6, nx17096z1, nx19090z4, 
         nx18093z1, nx19090z2, nx19090z1, nx_modgen_counter_16_1_vcc_net;
    wire [79:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (nx19090z23), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (nx19090z25), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix19090z52923 (.combout (nx19090z1), .dataa (q[12]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z2)) ;
                         
                         defparam ix19090z52923.lut_mask = 16'h5a5a;
                         
                         defparam ix19090z52923.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix19090z52925 (.combout (nx18093z1), .cout (nx19090z2)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z4)) ;
                         
                         defparam ix19090z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52926 (.combout (nx17096z1), .cout (nx19090z4)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z6)) ;
                         
                         defparam ix19090z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52927 (.combout (nx60244z1), .cout (nx19090z6)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z8)) ;
                         
                         defparam ix19090z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52935 (.combout (nx52268z1), .cout (nx19090z22)
                         , .dataa (nx19090z23), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z24)) ;
                         
                         defparam ix19090z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52928 (.combout (nx59247z1), .cout (nx19090z8)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z10)) ;
                         
                         defparam ix19090z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52929 (.combout (nx58250z1), .cout (nx19090z10)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z12)) ;
                         
                         defparam ix19090z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52930 (.combout (nx57253z1), .cout (nx19090z12)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z14)) ;
                         
                         defparam ix19090z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52931 (.combout (nx56256z1), .cout (nx19090z14)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z16)) ;
                         
                         defparam ix19090z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52936 (.combout (nx51271z1), .cout (nx19090z24)
                         , .dataa (nx19090z25), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix19090z52936.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix19090z52932 (.combout (nx55259z1), .cout (nx19090z16)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z18)) ;
                         
                         defparam ix19090z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52933 (.combout (nx54262z1), .cout (nx19090z18)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z20)) ;
                         
                         defparam ix19090z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52934 (.combout (nx53265z1), .cout (nx19090z20)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z22)) ;
                         
                         defparam ix19090z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52934.sum_lutc_input = "cin";
endmodule


module modgen_counter_16_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx22081z16, nx52268z1, nx22081z15, nx53265z1, nx22081z14, 
         nx54262z1, nx22081z13, nx55259z1, nx22081z12, nx56256z1, nx22081z11, 
         nx57253z1, nx22081z10, nx58250z1, nx22081z9, nx59247z1, nx22081z8, 
         nx60244z1, nx22081z7, nx17096z1, nx22081z6, nx18093z1, nx22081z5, 
         nx19090z1, nx22081z4, nx20087z1, nx22081z3, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [97:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z14)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z15)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z3)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z3)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z4)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z5)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z5)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z6)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z7)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z7)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z15)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z8)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z9)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z9)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z11)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z11)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z13)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z13)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z16)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule

