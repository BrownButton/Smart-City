// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module system_v_gamma_lut_0_1_Gamma_Pipeline_VITIS_LOOP_273_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        gamma_lut_0_address0,
        gamma_lut_0_ce0,
        gamma_lut_0_q0,
        gamma_lut_1_address0,
        gamma_lut_1_ce0,
        gamma_lut_1_q0,
        gamma_lut_2_address0,
        gamma_lut_2_ce0,
        gamma_lut_2_q0,
        lut_0_V_0_address0,
        lut_0_V_0_ce0,
        lut_0_V_0_we0,
        lut_0_V_0_d0,
        lut_1_V_0_address0,
        lut_1_V_0_ce0,
        lut_1_V_0_we0,
        lut_1_V_0_d0,
        lut_2_V_0_address0,
        lut_2_V_0_ce0,
        lut_2_V_0_we0,
        lut_2_V_0_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] gamma_lut_0_address0;
output   gamma_lut_0_ce0;
input  [15:0] gamma_lut_0_q0;
output  [9:0] gamma_lut_1_address0;
output   gamma_lut_1_ce0;
input  [15:0] gamma_lut_1_q0;
output  [9:0] gamma_lut_2_address0;
output   gamma_lut_2_ce0;
input  [15:0] gamma_lut_2_q0;
output  [9:0] lut_0_V_0_address0;
output   lut_0_V_0_ce0;
output   lut_0_V_0_we0;
output  [9:0] lut_0_V_0_d0;
output  [9:0] lut_1_V_0_address0;
output   lut_1_V_0_ce0;
output   lut_1_V_0_we0;
output  [9:0] lut_1_V_0_d0;
output  [9:0] lut_2_V_0_address0;
output   lut_2_V_0_ce0;
output   lut_2_V_0_we0;
output  [9:0] lut_2_V_0_d0;

reg ap_idle;
reg gamma_lut_0_ce0;
reg gamma_lut_1_ce0;
reg gamma_lut_2_ce0;
reg lut_0_V_0_ce0;
reg lut_0_V_0_we0;
reg lut_1_V_0_ce0;
reg lut_1_V_0_we0;
reg lut_2_V_0_ce0;
reg lut_2_V_0_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln273_fu_142_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] i_1_reg_198;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] i_cast_cast_fu_158_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] i_cast34_fu_170_p1;
reg   [10:0] i_fu_52;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i_1;
wire   [10:0] add_ln273_fu_148_p2;
wire   [9:0] empty_fu_154_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

system_v_gamma_lut_0_1_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln273_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_52 <= add_ln273_fu_148_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_52 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_198 <= ap_sig_allocacmp_i_1;
    end
end

always @ (*) begin
    if (((icmp_ln273_fu_142_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_52;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gamma_lut_0_ce0 = 1'b1;
    end else begin
        gamma_lut_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gamma_lut_1_ce0 = 1'b1;
    end else begin
        gamma_lut_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gamma_lut_2_ce0 = 1'b1;
    end else begin
        gamma_lut_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lut_0_V_0_ce0 = 1'b1;
    end else begin
        lut_0_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lut_0_V_0_we0 = 1'b1;
    end else begin
        lut_0_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lut_1_V_0_ce0 = 1'b1;
    end else begin
        lut_1_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lut_1_V_0_we0 = 1'b1;
    end else begin
        lut_1_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lut_2_V_0_ce0 = 1'b1;
    end else begin
        lut_2_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lut_2_V_0_we0 = 1'b1;
    end else begin
        lut_2_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln273_fu_148_p2 = (ap_sig_allocacmp_i_1 + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_154_p1 = ap_sig_allocacmp_i_1[9:0];

assign gamma_lut_0_address0 = i_cast_cast_fu_158_p1;

assign gamma_lut_1_address0 = i_cast_cast_fu_158_p1;

assign gamma_lut_2_address0 = i_cast_cast_fu_158_p1;

assign i_cast34_fu_170_p1 = i_1_reg_198;

assign i_cast_cast_fu_158_p1 = empty_fu_154_p1;

assign icmp_ln273_fu_142_p2 = ((ap_sig_allocacmp_i_1 == 11'd1024) ? 1'b1 : 1'b0);

assign lut_0_V_0_address0 = i_cast34_fu_170_p1;

assign lut_0_V_0_d0 = gamma_lut_0_q0[9:0];

assign lut_1_V_0_address0 = i_cast34_fu_170_p1;

assign lut_1_V_0_d0 = gamma_lut_1_q0[9:0];

assign lut_2_V_0_address0 = i_cast34_fu_170_p1;

assign lut_2_V_0_d0 = gamma_lut_2_q0[9:0];

endmodule //system_v_gamma_lut_0_1_Gamma_Pipeline_VITIS_LOOP_273_1