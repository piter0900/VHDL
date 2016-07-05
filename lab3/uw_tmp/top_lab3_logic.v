//
// Verilog description for cell top_lab3, 
// 06/10/15 12:19:00
//
// Precision RTL Synthesis, 2008a.47//


module top_lab3 ( nreset, clk, rxflex, txflex, ctsflex, o_sevenseg ) ;

    input nreset ;
    input clk ;
    input rxflex ;
    output txflex ;
    output ctsflex ;
    output [15:0]o_sevenseg ;

    wire u_uw_uart_o_pixavail, u_uw_uart_rxerr, u_uw_uart_rxrdy, 
         u_uw_uart_sdout_3_, u_uw_uart_state, u_uw_uart_dsend, 
         u_uw_uart_mdata_3_, u_uw_uart_ack;
    wire [15:0]u_uw_uart_waitcount;
    wire u_uw_uart_ld_sdout, nreset_int, clk_int, rxflex_int, reset, result_0_, 
         ctsflex_dup0, u_uw_uart_rawrx, nx58118z3, nx24656z2, nx21486z2, 
         nx58118z8, nx24656z1, nx30026z1, nx51426z1, nx58118z1, nx21486z1, 
         nx62599z1, nx58118z4, nx58118z5, nx58118z6, nx58118z7, nx58118z2, 
         Tx_Reg_14n6ss1_0__dup_4, NOT_rtlcn2_dup_5, nx21351z1, nx21351z2;
    wire [448:0] xmplr_dummy ;




    UARTS u_uw_uart_u_uarts (.CLK (clk_int), .RST (reset), .Din ({
          xmplr_dummy [0],xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3],
          u_uw_uart_sdout_3_,xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6]}), 
          .LD (u_uw_uart_ld_sdout), .Rx (u_uw_uart_rawrx), .RxErr (
          u_uw_uart_rxerr), .RxRDY (u_uw_uart_rxrdy), .p_Tx_Reg_14n6ss1_0_ (
          Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (NOT_rtlcn2_dup_5), .p_nreset_int (
          nreset_int), .p_rxflex_int (rxflex_int)) ;
    modgen_counter_16_0 u_uw_uart_modgen_counter_waitcount (.clock (clk_int), .q (
                        {u_uw_uart_waitcount[15],u_uw_uart_waitcount[14],
                        u_uw_uart_waitcount[13],u_uw_uart_waitcount[12],
                        u_uw_uart_waitcount[11],u_uw_uart_waitcount[10],
                        u_uw_uart_waitcount[9],u_uw_uart_waitcount[8],
                        u_uw_uart_waitcount[7],u_uw_uart_waitcount[6],
                        u_uw_uart_waitcount[5],u_uw_uart_waitcount[4],
                        u_uw_uart_waitcount[3],u_uw_uart_waitcount[2],
                        u_uw_uart_waitcount[1],u_uw_uart_waitcount[0]}), .clk_en (
                        nx24656z1), .sclear (nx24656z2)) ;
    assign reset = ~nreset_int ;
    assign result_0_ = 0 ;
    assign ctsflex_dup0 = 1 ;
    assign nx21351z1 = ~nx21351z2 ;
    cycloneii_lcell_ff u_uw_uart_reg_state (.regout (u_uw_uart_state), .datain (
                       nx21486z2), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       reset), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_uw_uart_reg_sdout_3_ (.regout (u_uw_uart_sdout_3_), .datain (
                       nx21486z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_uw_uart_reg_mdata_3_ (.regout (u_uw_uart_mdata_3_), .datain (
                       nx58118z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_uw_uart_reg_ld_sdout (.regout (u_uw_uart_ld_sdout), .datain (
                       nx62599z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       reset), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_uw_uart_reg_dsend (.regout (u_uw_uart_dsend), .datain (
                       nx58118z3), .sdata (u_uw_uart_rxerr), .clk (clk_int), .ena (
                       ctsflex_dup0), .aclr (1'b0), .sclr (reset), .sload (
                       nx58118z8)) ;
    cycloneii_lcell_ff u_uw_uart_reg_charavail (.regout (u_uw_uart_o_pixavail), 
                       .datain (nx51426z1), .sdata (1'b0), .clk (clk_int), .ena (
                       1'b1), .aclr (reset), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_uw_uart_reg_ack (.regout (u_uw_uart_ack), .datain (
                       nx30026z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (reset), .sload (1'b0)) ;
    cycloneii_io rxflex_ibuf (.combout (rxflex_int), .padio (rxflex), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam rxflex_ibuf.operation_mode = "input";
                 
                 defparam rxflex_ibuf.output_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam rxflex_ibuf.oe_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam rxflex_ibuf.input_register_mode = "none";
    cycloneii_lcell_ff reg_out_txflex_obuf (.regout (nx21351z2), .datain (
                       Tx_Reg_14n6ss1_0__dup_4), .sdata (1'b0), .clk (clk_int), 
                       .ena (NOT_rtlcn2_dup_5), .aclr (reset), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_io o_sevenseg_obuf_9_ (.padio (o_sevenseg[9]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_9_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_9_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_9_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_9_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_8_ (.padio (o_sevenseg[8]), .datain (
                 ctsflex_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_8_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_8_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_8_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_8_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_7_ (.padio (o_sevenseg[7]), .datain (nreset_int
                 ), .oe (1'b1), .outclk (clk_int), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_7_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_7_.output_register_mode = "register";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_6_ (.padio (o_sevenseg[6]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_6_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_6_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_6_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_5_ (.padio (o_sevenseg[5]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_5_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_5_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_5_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_4_ (.padio (o_sevenseg[4]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_4_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_4_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_4_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_3_ (.padio (o_sevenseg[3]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_3_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_3_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_3_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_2_ (.padio (o_sevenseg[2]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_2_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_2_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_2_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_15_ (.padio (o_sevenseg[15]), .datain (
                 ctsflex_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_15_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_15_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_14_ (.padio (o_sevenseg[14]), .datain (
                 result_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_14_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_14_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_14_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_14_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_13_ (.padio (o_sevenseg[13]), .datain (
                 result_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_13_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_13_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_13_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_13_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_12_ (.padio (o_sevenseg[12]), .datain (
                 result_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_12_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_12_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_12_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_12_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_11_ (.padio (o_sevenseg[11]), .datain (
                 result_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_11_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_11_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_11_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_11_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_10_ (.padio (o_sevenseg[10]), .datain (
                 result_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_10_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_10_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_10_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_10_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_1_ (.padio (o_sevenseg[1]), .datain (result_0_)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_1_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_1_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_1_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_0_ (.padio (o_sevenseg[0]), .datain (
                 ctsflex_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_0_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_0_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_0_.input_register_mode = "none";
    cycloneii_io nreset_ibuf (.combout (nreset_int), .padio (nreset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam nreset_ibuf.operation_mode = "input";
                 
                 defparam nreset_ibuf.output_register_mode = "none";
                 
                 defparam nreset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam nreset_ibuf.oe_register_mode = "none";
                 
                 defparam nreset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam nreset_ibuf.input_register_mode = "none";
    cycloneii_io ix21351z43919 (.padio (txflex), .datain (nx21351z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21351z43919.operation_mode = "output";
                 
                 defparam ix21351z43919.output_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21351z43919.oe_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21351z43919.input_register_mode = "none";
    cycloneii_io ctsflex_obuf (.padio (ctsflex), .datain (ctsflex_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ctsflex_obuf.operation_mode = "output";
                 
                 defparam ctsflex_obuf.output_register_mode = "none";
                 
                 defparam ctsflex_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam ctsflex_obuf.oe_register_mode = "none";
                 
                 defparam ctsflex_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam ctsflex_obuf.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix58118z52924 (.combout (nx58118z2), .dataa (
                         u_uw_uart_mdata_3_), .datab (nx58118z3), .datac (
                         nx58118z8), .datad (nreset_int), .cin (1'b0)) ;
                         
                         defparam ix58118z52924.lut_mask = 16'h0e0a;
    cycloneii_lcell_comb ix58118z52929 (.combout (nx58118z7), .dataa (
                         u_uw_uart_waitcount[3]), .datab (u_uw_uart_waitcount[2]
                         ), .datac (u_uw_uart_waitcount[1]), .datad (
                         u_uw_uart_waitcount[0]), .cin (1'b0)) ;
                         
                         defparam ix58118z52929.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix58118z52928 (.combout (nx58118z6), .dataa (
                         u_uw_uart_waitcount[7]), .datab (u_uw_uart_waitcount[6]
                         ), .datac (u_uw_uart_waitcount[5]), .datad (
                         u_uw_uart_waitcount[4]), .cin (1'b0)) ;
                         
                         defparam ix58118z52928.lut_mask = 16'h0040;
    cycloneii_lcell_comb ix58118z52927 (.combout (nx58118z5), .dataa (
                         u_uw_uart_waitcount[11]), .datab (
                         u_uw_uart_waitcount[10]), .datac (
                         u_uw_uart_waitcount[9]), .datad (u_uw_uart_waitcount[8]
                         ), .cin (1'b0)) ;
                         
                         defparam ix58118z52927.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix58118z52926 (.combout (nx58118z4), .dataa (
                         u_uw_uart_waitcount[15]), .datab (
                         u_uw_uart_waitcount[14]), .datac (
                         u_uw_uart_waitcount[13]), .datad (
                         u_uw_uart_waitcount[12]), .cin (1'b0)) ;
                         
                         defparam ix58118z52926.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix62599z52923 (.combout (nx62599z1), .dataa (
                         u_uw_uart_state), .datab (u_uw_uart_dsend), .datac (
                         u_uw_uart_ld_sdout), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62599z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix21486z52923 (.combout (nx21486z1), .dataa (
                         u_uw_uart_sdout_3_), .datab (u_uw_uart_mdata_3_), .datac (
                         nx21486z2), .datad (nreset_int), .cin (1'b0)) ;
                         
                         defparam ix21486z52923.lut_mask = 16'hcaaa;
    cycloneii_lcell_comb ix58118z52923 (.combout (nx58118z1), .dataa (
                         u_uw_uart_rxerr), .datab (u_uw_uart_mdata_3_), .datac (
                         nreset_int), .datad (nx58118z2), .cin (1'b0)) ;
                         
                         defparam ix58118z52923.lut_mask = 16'hff4c;
    cycloneii_lcell_comb ix51426z52923 (.combout (nx51426z1), .dataa (
                         u_uw_uart_o_pixavail), .datab (u_uw_uart_rxrdy), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51426z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix30026z52923 (.combout (nx30026z1), .dataa (
                         u_uw_uart_o_pixavail), .datab (u_uw_uart_ack), .datac (
                         nx58118z3), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30026z52923.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix24656z52923 (.combout (nx24656z1), .dataa (
                         u_uw_uart_o_pixavail), .datab (u_uw_uart_ack), .datac (
                         nreset_int), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24656z52923.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix58118z52930 (.combout (nx58118z8), .dataa (
                         u_uw_uart_o_pixavail), .datab (u_uw_uart_ack), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58118z52930.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix21486z52924 (.combout (nx21486z2), .dataa (
                         u_uw_uart_state), .datab (u_uw_uart_dsend), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix21486z52924.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix24656z52924 (.combout (nx24656z2), .dataa (nx58118z3)
                         , .datab (nreset_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix24656z52924.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix58118z52925 (.combout (nx58118z3), .dataa (nx58118z4)
                         , .datab (nx58118z5), .datac (nx58118z6), .datad (
                         nx58118z7), .cin (1'b0)) ;
                         
                         defparam ix58118z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix34741z52924 (.combout (u_uw_uart_rawrx), .dataa (
                         nreset_int), .datab (rxflex_int), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix34741z52924.lut_mask = 16'h8888;
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

    wire nx51271z1, nx22081z30, nx52268z1, nx22081z28, nx53265z1, nx22081z26, 
         nx54262z1, nx22081z24, nx55259z1, nx22081z22, nx56256z1, nx22081z20, 
         nx57253z1, nx22081z18, nx58250z1, nx22081z16, nx59247z1, nx22081z14, 
         nx60244z1, nx22081z12, nx17096z1, nx22081z10, nx18093z1, nx22081z8, 
         nx19090z1, nx22081z6, nx20087z1, nx22081z4, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [81:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z4)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z6)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z8)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z10)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z26)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z28)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z12)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z28)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z30)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z14)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z16)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z18)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z18)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z20)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z20)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z22)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z22)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z24)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z24)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z26)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z30)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY, 
               p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_nreset_int, p_rxflex_int ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_nreset_int ;
    input p_rxflex_int ;

    wire TxDivisor_5_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire [1:0]TxFSM;
    wire RxFSM_6_, RxFSM_5_, RxFSM_3_, RxFSM_2_, RxFSM_1_, RxFSM_0_, nx65151z1, 
         Tx_Reg_14n6ss1_3_, Tx_Reg_14n6ss1_2_, Tx_Reg_14n6ss1_1_, nx50920z2, 
         nx31615z2, not_rtlc17_X_0_n360, nx15541z1, nx13547z1, nx14544z1, 
         nx11553z1, nx34394z1, nx34394z3, nx32400z1, nx13547z2, nx43465z1, PWR, 
         nx4608z1, nx51917z2, nx50920z3, nx51917z3, nx9370z2, nx51917z1, 
         nx50920z1, nx49923z1, nx48926z1, nx8373z1, nx9370z1, nx10367z1, 
         nx11364z1, nx5605z1, nx15376z1, nx34394z4, nx34394z5, nx34394z6, 
         nx34394z9, nx34394z7, nx34394z10, nx34394z8, nx32400z2, nx32400z3, 
         nx32400z4, nx32400z6, nx32400z5, nx32400z7, nx15541z2, nx4608z2, 
         nx4608z3, nx51917z4, nx8373z2, nx15541z3, nx32400z8, nx32400z9, 
         not_Rx_r, NOT_Rx, nx30618z2, nx31615z1, nx29621z2, nx30618z1, nx28624z2, 
         nx29621z1, nx61140z1, nx28624z1, nx34394z2, nx16538z1;
    wire [283:0] xmplr_dummy ;




    modgen_counter_11_0 modgen_counter_RxDiv (.clock (CLK), .q ({RxDiv[10],
                        RxDiv[9],RxDiv[8],RxDiv[7],RxDiv[6],RxDiv[5],RxDiv[4],
                        RxDiv[3],RxDiv[2],RxDiv[1],RxDiv[0]}), .aclear (RST), .sclear (
                        nx65151z1)) ;
    modgen_counter_12_0 modgen_counter_TxDiv (.clock (CLK), .q ({TxDiv[11],
                        TxDiv[10],TxDiv[9],TxDiv[8],TxDiv[7],TxDiv[6],TxDiv[5],
                        TxDiv[4],TxDiv[3],TxDiv[2],TxDiv[1],TxDiv[0]}), .aclear (
                        RST), .sclear (nx32400z1)) ;
    assign PWR = 1 ;
    assign RxFSM_0_ = ~nx34394z2 ;
    cycloneii_lcell_ff reg_Tx_Reg_4_ (.regout (nx30618z2), .datain (nx31615z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_3_ (.regout (nx29621z2), .datain (nx30618z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_2_ (.regout (nx28624z2), .datain (nx29621z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_1_ (.regout (nx61140z1), .datain (nx28624z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_1_ (.regout (TxFSM[1]), .datain (nx5605z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_0_ (.regout (TxFSM[0]), .datain (nx4608z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxDivisor_5_ (.regout (TxDivisor_5_), .datain (PWR), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopTx (.regout (TopTx), .datain (nx32400z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopRx (.regout (TopRx), .datain (nx34394z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_r (.regout (not_Rx_r), .datain (NOT_Rx), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxRDYi (.regout (RxRDY), .datain (nx43465z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_6_ (.regout (RxFSM_6_), .datain (RxFSM_1_), .sdata (
                       RxFSM_5_), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (not_Rx_r)) ;
    cycloneii_lcell_ff reg_RxFSM_5_ (.regout (RxFSM_5_), .datain (nx11553z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_3_ (.regout (RxFSM_3_), .datain (nx13547z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_2_ (.regout (RxFSM_2_), .datain (nx14544z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_1_ (.regout (RxFSM_1_), .datain (RxFSM_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_0_ (.regout (nx34394z2), .datain (nx16538z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxErr (.regout (RxErr), .datain (nx15376z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_3_ (.regout (TxBitCnt[3]), 
                       .datain (nx51917z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_2_ (.regout (TxBitCnt[2]), 
                       .datain (nx50920z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_1_ (.regout (TxBitCnt[1]), 
                       .datain (nx49923z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_0_ (.regout (TxBitCnt[0]), 
                       .datain (nx48926z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_3_ (.regout (RxBitCnt[3]), 
                       .datain (nx8373z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_2_ (.regout (RxBitCnt[2]), 
                       .datain (nx9370z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_1_ (.regout (RxBitCnt[1]), 
                       .datain (nx10367z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_0_ (.regout (RxBitCnt[0]), 
                       .datain (nx11364z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix29621z52924 (.combout (Tx_Reg_14n6ss1_2_), .dataa (
                         Din[3]), .datab (nx29621z2), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52924.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix30618z52924 (.combout (Tx_Reg_14n6ss1_3_), .dataa (
                         Din[3]), .datab (nx30618z2), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52924.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix65151z52923 (.combout (nx65151z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix65151z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix32400z52931 (.combout (nx32400z9), .dataa (TxDiv[10])
                         , .datab (TxDiv[9]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32400z52931.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix32400z52930 (.combout (nx32400z8), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[0]), .datad (
                         nx32400z9), .cin (1'b0)) ;
                         
                         defparam ix32400z52930.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix8373z52925 (.combout (nx8373z2), .dataa (RxBitCnt[3])
                         , .datab (RxBitCnt[2]), .datac (RxBitCnt[1]), .datad (
                         RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix8373z52925.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix51917z52926 (.combout (nx51917z4), .dataa (
                         TxBitCnt[3]), .datab (TxBitCnt[2]), .datac (nx50920z2)
                         , .datad (nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix51917z52926.lut_mask = 16'hf0f1;
    cycloneii_lcell_comb ix4608z52925 (.combout (nx4608z3), .dataa (TxBitCnt[3])
                         , .datab (TxBitCnt[2]), .datac (TxBitCnt[1]), .datad (
                         TxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix4608z52925.lut_mask = 16'hfeff;
    cycloneii_lcell_comb ix4608z52924 (.combout (nx4608z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix4608z52924.lut_mask = 16'h3335;
    cycloneii_lcell_comb ix15541z52925 (.combout (nx15541z2), .dataa (Rx), .datab (
                         TopRx), .datac (RxFSM_6_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix15541z52925.lut_mask = 16'hac00;
    cycloneii_lcell_comb ix32400z52929 (.combout (nx32400z7), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52927 (.combout (nx32400z5), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52927.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52928 (.combout (nx32400z6), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52926 (.combout (nx32400z4), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52926.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix32400z52925 (.combout (nx32400z3), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[10]), 
                         .datad (TxDiv[9]), .cin (1'b0)) ;
                         
                         defparam ix32400z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52924 (.combout (nx32400z2), .dataa (TxDiv[0])
                         , .datab (nx32400z3), .datac (nx32400z4), .datad (
                         nx32400z5), .cin (1'b0)) ;
                         
                         defparam ix32400z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix34394z52929 (.combout (nx34394z8), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52931 (.combout (nx34394z10), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52931.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix34394z52928 (.combout (nx34394z7), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52930 (.combout (nx34394z9), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52930.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix34394z52927 (.combout (nx34394z6), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52927.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52926 (.combout (nx34394z5), .dataa (nx34394z6)
                         , .datab (nx34394z7), .datac (nx34394z8), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix34394z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix34394z52925 (.combout (nx34394z4), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix15376z52923 (.combout (nx15376z1), .dataa (RxErr), .datab (
                         RxRDY), .datac (RxFSM_6_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15376z52923.lut_mask = 16'hf2f2;
    cycloneii_lcell_comb ix11364z52923 (.combout (nx11364z1), .dataa (TopRx), .datab (
                         RxBitCnt[0]), .datac (RxFSM_3_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix11364z52923.lut_mask = 16'h6c40;
    cycloneii_lcell_comb ix10367z52923 (.combout (nx10367z1), .dataa (
                         RxBitCnt[1]), .datab (RxBitCnt[0]), .datac (nx34394z2)
                         , .datad (not_rtlc17_X_0_n360), .cin (1'b0)) ;
                         
                         defparam ix10367z52923.lut_mask = 16'h60aa;
    cycloneii_lcell_comb ix9370z52923 (.combout (nx9370z1), .dataa (RxBitCnt[2])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx9370z2), .cin (1'b0)) ;
                         
                         defparam ix9370z52923.lut_mask = 16'h4a8a;
    cycloneii_lcell_comb ix8373z52923 (.combout (nx8373z1), .dataa (RxBitCnt[3])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx8373z2), .cin (1'b0)) ;
                         
                         defparam ix8373z52923.lut_mask = 16'hca0a;
    cycloneii_lcell_comb ix48926z52923 (.combout (nx48926z1), .dataa (TopTx), .datab (
                         TxBitCnt[0]), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix48926z52923.lut_mask = 16'hce6c;
    cycloneii_lcell_comb ix49923z52923 (.combout (nx49923z1), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (nx50920z2)
                         , .datad (nx51917z2), .cin (1'b0)) ;
                         
                         defparam ix49923z52923.lut_mask = 16'h09aa;
    cycloneii_lcell_comb ix50920z52923 (.combout (nx50920z1), .dataa (
                         TxBitCnt[2]), .datab (nx50920z2), .datac (nx51917z2), .datad (
                         nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix50920z52923.lut_mask = 16'h2a1a;
    cycloneii_lcell_comb ix51917z52923 (.combout (nx51917z1), .dataa (
                         TxBitCnt[3]), .datab (nx51917z2), .datac (nx51917z3), .datad (
                         nx51917z4), .cin (1'b0)) ;
                         
                         defparam ix51917z52923.lut_mask = 16'heea2;
    cycloneii_lcell_comb ix28624z52923 (.combout (nx28624z1), .dataa (nx61140z1)
                         , .datab (Tx_Reg_14n6ss1_1_), .datac (nx31615z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix29621z52923 (.combout (nx29621z1), .dataa (nx28624z2)
                         , .datab (Tx_Reg_14n6ss1_2_), .datac (nx31615z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix30618z52923 (.combout (nx30618z1), .dataa (nx29621z2)
                         , .datab (Tx_Reg_14n6ss1_3_), .datac (nx31615z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix31615z52923 (.combout (nx31615z1), .dataa (Din[3]), .datab (
                         nx30618z2), .datac (TxFSM[1]), .datad (nx31615z2), .cin (
                         1'b0)) ;
                         defparam ix31615z52923.lut_mask = 16'h05cc;
    cycloneii_lcell_comb ix61812z52923 (.combout (p_NOT_rtlcn2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix61812z52923.lut_mask = 16'h0cca;
    cycloneii_lcell_comb ix9370z52924 (.combout (nx9370z2), .dataa (RxBitCnt[1])
                         , .datab (RxBitCnt[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix9370z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix15541z52926 (.combout (nx15541z3), .dataa (RxFSM_6_)
                         , .datab (p_rxflex_int), .datac (p_nreset_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix15541z52926.lut_mask = 16'hd5d5;
    cycloneii_lcell_comb ix51917z52925 (.combout (nx51917z3), .dataa (
                         TxBitCnt[2]), .datab (TxBitCnt[1]), .datac (TxBitCnt[0]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51917z52925.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix50920z52925 (.combout (nx50920z3), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix51917z52924 (.combout (nx51917z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (TxFSM[0]), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix51917z52924.lut_mask = 16'h2828;
    cycloneii_lcell_comb ix4608z52923 (.combout (nx4608z1), .dataa (TxFSM[1]), .datab (
                         TxFSM[0]), .datac (nx4608z2), .datad (nx4608z3), .cin (
                         1'b0)) ;
                         defparam ix4608z52923.lut_mask = 16'hc1c3;
    cycloneii_lcell_comb ix43465z52923 (.combout (nx43465z1), .dataa (TopRx), .datab (
                         not_Rx_r), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix43465z52923.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix13547z52924 (.combout (nx13547z2), .dataa (
                         RxBitCnt[3]), .datab (RxBitCnt[2]), .datac (RxBitCnt[1]
                         ), .datad (RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix13547z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52923 (.combout (nx32400z1), .dataa (nx32400z2)
                         , .datab (nx32400z6), .datac (nx32400z7), .datad (
                         nx32400z8), .cin (1'b0)) ;
                         
                         defparam ix32400z52923.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix34394z52924 (.combout (nx34394z3), .dataa (nx34394z4)
                         , .datab (nx34394z5), .datac (nx34394z9), .datad (
                         nx34394z10), .cin (1'b0)) ;
                         
                         defparam ix34394z52924.lut_mask = 16'heccc;
    cycloneii_lcell_comb ix34394z52923 (.combout (nx34394z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix34394z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix11553z52923 (.combout (nx11553z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11553z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix16538z52923 (.combout (nx16538z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_6_), .datac (RxFSM_5_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix16538z52923.lut_mask = 16'h2323;
    cycloneii_lcell_comb ix14544z52923 (.combout (nx14544z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_3_), .datac (RxFSM_1_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix14544z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix13547z52923 (.combout (nx13547z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix13547z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix15541z52924 (.combout (nx15541z1), .dataa (not_Rx_r)
                         , .datab (nx34394z2), .datac (nx15541z2), .datad (
                         nx15541z3), .cin (1'b0)) ;
                         
                         defparam ix15541z52924.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix8373z52924 (.combout (not_rtlc17_X_0_n360), .dataa (
                         TopRx), .datab (RxFSM_3_), .datac (nx34394z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8373z52924.lut_mask = 16'h8b8b;
    cycloneii_lcell_comb ix31615z52924 (.combout (nx31615z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix31615z52924.lut_mask = 16'h00ca;
    cycloneii_lcell_comb ix50920z52924 (.combout (nx50920z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix61140z52923 (.combout (p_Tx_Reg_14n6ss1_0_), .dataa (
                         nx61140z1), .datab (TxFSM[1]), .datac (TxFSM[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61140z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix28624z52924 (.combout (Tx_Reg_14n6ss1_1_), .dataa (
                         Din[3]), .datab (nx28624z2), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52924.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix5605z52923 (.combout (nx5605z1), .dataa (TxFSM[0]), .datab (
                         TxFSM[1]), .datac (TopTx), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix5605z52923.lut_mask = 16'h6c6c;
    cycloneii_lcell_comb ix57064z52923 (.combout (NOT_Rx), .dataa (p_nreset_int)
                         , .datab (p_rxflex_int), .datac (1'b1), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix57064z52923.lut_mask = 16'h7777;
endmodule


module modgen_counter_12_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
         nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
         nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
         nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
         nx_modgen_counter_12_0_vcc_net;
    wire [61:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix18093z52933 (.combout (nx53265z1), .cout (nx18093z18)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z20)) ;
                         
                         defparam ix18093z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52933.sum_lutc_input = "cin";
    assign nx_modgen_counter_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix18093z52923 (.combout (nx18093z1), .dataa (q[11]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z2)) ;
                         
                         defparam ix18093z52923.lut_mask = 16'h5a00;
                         
                         defparam ix18093z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52925 (.combout (nx17096z1), .cout (nx18093z2)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z4)) ;
                         
                         defparam ix18093z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52926 (.combout (nx60244z1), .cout (nx18093z4)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z6)) ;
                         
                         defparam ix18093z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52927 (.combout (nx59247z1), .cout (nx18093z6)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z8)) ;
                         
                         defparam ix18093z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52928 (.combout (nx58250z1), .cout (nx18093z8)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z10)) ;
                         
                         defparam ix18093z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52934 (.combout (nx52268z1), .cout (nx18093z20)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z22)) ;
                         
                         defparam ix18093z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52929 (.combout (nx57253z1), .cout (nx18093z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z12)) ;
                         
                         defparam ix18093z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52930 (.combout (nx56256z1), .cout (nx18093z12)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z14)) ;
                         
                         defparam ix18093z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52931 (.combout (nx55259z1), .cout (nx18093z14)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z16)) ;
                         
                         defparam ix18093z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52932 (.combout (nx54262z1), .cout (nx18093z16)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z18)) ;
                         
                         defparam ix18093z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52935 (.combout (nx51271z1), .cout (nx18093z22)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix18093z52935.lut_mask = 16'h55aa;
endmodule


module modgen_counter_11_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, 
         nx54262z1, nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, 
         nx57253z1, nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, 
         nx60244z1, nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net;
    wire [56:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix17096z52932 (.combout (nx53265z1), .cout (nx17096z16)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z18)) ;
                         
                         defparam ix17096z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52932.sum_lutc_input = "cin";
    assign nx_modgen_counter_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix17096z52923 (.combout (nx17096z1), .dataa (q[10]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z2)) ;
                         
                         defparam ix17096z52923.lut_mask = 16'h5a00;
                         
                         defparam ix17096z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52925 (.combout (nx60244z1), .cout (nx17096z2)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z4)) ;
                         
                         defparam ix17096z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52926 (.combout (nx59247z1), .cout (nx17096z4)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z6)) ;
                         
                         defparam ix17096z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52927 (.combout (nx58250z1), .cout (nx17096z6)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z8)) ;
                         
                         defparam ix17096z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52933 (.combout (nx52268z1), .cout (nx17096z18)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z20)) ;
                         
                         defparam ix17096z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52928 (.combout (nx57253z1), .cout (nx17096z8)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z10)) ;
                         
                         defparam ix17096z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52929 (.combout (nx56256z1), .cout (nx17096z10)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z12)) ;
                         
                         defparam ix17096z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52930 (.combout (nx55259z1), .cout (nx17096z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z14)) ;
                         
                         defparam ix17096z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52931 (.combout (nx54262z1), .cout (nx17096z14)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z16)) ;
                         
                         defparam ix17096z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52934 (.combout (nx51271z1), .cout (nx17096z20)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix17096z52934.lut_mask = 16'h55aa;
endmodule

