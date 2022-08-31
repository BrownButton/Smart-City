// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module system_v_tpg_0_1_AXIvideo2MultiPixStream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_video_TDATA,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        srcYUV_din,
        srcYUV_full_n,
        srcYUV_write,
        enableInput,
        height,
        width,
        colorFormat,
        height_c_din,
        height_c_full_n,
        height_c_write,
        width_c_din,
        width_c_full_n,
        width_c_write,
        enableInput_c_din,
        enableInput_c_full_n,
        enableInput_c_write,
        colorFormat_c_din,
        colorFormat_c_full_n,
        colorFormat_c_write
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [3:0] s_axis_video_TKEEP;
input  [3:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [47:0] srcYUV_din;
input   srcYUV_full_n;
output   srcYUV_write;
input  [7:0] enableInput;
input  [15:0] height;
input  [15:0] width;
input  [7:0] colorFormat;
output  [15:0] height_c_din;
input   height_c_full_n;
output   height_c_write;
output  [15:0] width_c_din;
input   width_c_full_n;
output   width_c_write;
output  [7:0] enableInput_c_din;
input   enableInput_c_full_n;
output   enableInput_c_write;
output  [7:0] colorFormat_c_din;
input   colorFormat_c_full_n;
output   colorFormat_c_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_axis_video_TREADY;
reg srcYUV_write;
reg height_c_write;
reg width_c_write;
reg enableInput_c_write;
reg colorFormat_c_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    height_c_blk_n;
reg    width_c_blk_n;
reg    enableInput_c_blk_n;
reg    colorFormat_c_blk_n;
wire   [0:0] icmp_ln790_fu_317_p2;
reg   [0:0] icmp_ln790_reg_451;
wire   [10:0] trunc_ln783_fu_323_p1;
reg   [10:0] trunc_ln783_reg_455;
wire    ap_CS_fsm_state2;
wire   [10:0] empty_fu_327_p1;
reg   [10:0] empty_reg_460;
wire   [0:0] icmp_ln836_fu_331_p2;
reg   [0:0] icmp_ln836_reg_487;
wire   [0:0] cmp8527_fu_352_p2;
reg   [0:0] cmp8527_reg_495;
wire    ap_CS_fsm_state4;
wire   [10:0] i_4_fu_374_p2;
reg   [10:0] i_4_reg_505;
wire    ap_CS_fsm_state5;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_ready;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_s_axis_video_TREADY;
wire   [29:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_data_V_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_data_V_out_ap_vld;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_last_V_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_last_V_out_ap_vld;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_ready;
wire   [47:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_srcYUV_din;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_srcYUV_write;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_s_axis_video_TREADY;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_eol_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_eol_out_ap_vld;
wire   [29:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_axi_data_V_3_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_axi_data_V_3_out_ap_vld;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_ready;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_s_axis_video_TREADY;
wire   [29:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_data_V_4_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_data_V_4_out_ap_vld;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_last_V_4_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_last_V_4_out_ap_vld;
wire   [15:0] grp_reg_unsigned_short_s_fu_305_ap_return;
wire   [15:0] grp_reg_unsigned_short_s_fu_311_ap_return;
reg   [0:0] axi_last_V_2_reg_188;
wire    ap_CS_fsm_state10;
reg   [29:0] axi_0_2_lcssa_reg_198;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln801_fu_369_p2;
reg   [0:0] axi_4_2_lcssa_reg_208;
reg   [0:0] eol_0_lcssa_reg_219;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [0:0] axi_last_V_4_loc_fu_96;
reg   [10:0] i_fu_120;
reg   [29:0] axi_data_V_2_fu_124;
reg   [0:0] sof_fu_128;
reg    ap_block_state1;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start_reg = 1'b0;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start_reg = 1'b0;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start_reg = 1'b0;
end

system_v_tpg_0_1_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .axi_data_V_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_data_V_out),
    .axi_data_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_data_V_out_ap_vld),
    .axi_last_V_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_last_V_out),
    .axi_last_V_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_last_V_out_ap_vld)
);

system_v_tpg_0_1_AXIvideo2MultiPixStream_Pipeline_loop_width grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .srcYUV_din(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_srcYUV_din),
    .srcYUV_full_n(srcYUV_full_n),
    .srcYUV_write(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_srcYUV_write),
    .sof_5(sof_fu_128),
    .axi_last_V_2(axi_last_V_2_reg_188),
    .axi_data_V_2(axi_data_V_2_fu_124),
    .tmp_cast(empty_reg_460),
    .icmp_ln836(icmp_ln836_reg_487),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .eol_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_eol_out),
    .eol_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_eol_out_ap_vld),
    .axi_data_V_3_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_axi_data_V_3_out),
    .axi_data_V_3_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_axi_data_V_3_out_ap_vld)
);

system_v_tpg_0_1_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .axi_0_2_lcssa(axi_0_2_lcssa_reg_198),
    .axi_4_2_lcssa(axi_4_2_lcssa_reg_208),
    .eol_0_lcssa(eol_0_lcssa_reg_219),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .axi_data_V_4_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_data_V_4_out),
    .axi_data_V_4_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_data_V_4_out_ap_vld),
    .axi_last_V_4_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_last_V_4_out),
    .axi_last_V_4_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_last_V_4_out_ap_vld)
);

system_v_tpg_0_1_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_305(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(height),
    .ap_return(grp_reg_unsigned_short_s_fu_305_ap_return)
);

system_v_tpg_0_1_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_311(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(width),
    .ap_return(grp_reg_unsigned_short_s_fu_311_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln790_reg_451 == 1'd1) | (icmp_ln801_fu_369_p2 == 1'd1)))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln790_reg_451 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start_reg <= 1'b0;
    end else begin
        if (((cmp8527_reg_495 == 1'd0) & (icmp_ln790_reg_451 == 1'd0) & (icmp_ln801_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((cmp8527_reg_495 == 1'd1) & (icmp_ln790_reg_451 == 1'd0) & (icmp_ln801_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        axi_0_2_lcssa_reg_198 <= axi_data_V_2_fu_124;
    end else if (((cmp8527_reg_495 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        axi_0_2_lcssa_reg_198 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_axi_data_V_3_out;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp8527_reg_495 == 1'd1) & (icmp_ln790_reg_451 == 1'd0) & (icmp_ln801_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        axi_4_2_lcssa_reg_208 <= axi_last_V_2_reg_188;
    end else if (((cmp8527_reg_495 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        axi_4_2_lcssa_reg_208 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_eol_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        axi_data_V_2_fu_124 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_data_V_out;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        axi_data_V_2_fu_124 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_data_V_4_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        axi_last_V_2_reg_188 <= axi_last_V_4_loc_fu_96;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        axi_last_V_2_reg_188 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_axi_last_V_out;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp8527_reg_495 == 1'd1) & (icmp_ln790_reg_451 == 1'd0) & (icmp_ln801_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        eol_0_lcssa_reg_219 <= 1'd0;
    end else if (((cmp8527_reg_495 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        eol_0_lcssa_reg_219 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_eol_out;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln790_reg_451 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_120 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_fu_120 <= i_4_reg_505;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln790_reg_451 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sof_fu_128 <= 1'd1;
    end else if (((cmp8527_reg_495 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        sof_fu_128 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_last_V_4_out_ap_vld == 1'b1))) begin
        axi_last_V_4_loc_fu_96 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_axi_last_V_4_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cmp8527_reg_495 <= cmp8527_fu_352_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_reg_460 <= empty_fu_327_p1;
        trunc_ln783_reg_455 <= trunc_ln783_fu_323_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln790_reg_451 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        i_4_reg_505 <= i_4_fu_374_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln790_reg_451 <= icmp_ln790_fu_317_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln790_reg_451 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln836_reg_487 <= icmp_ln836_fu_331_p2;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

always @ (*) begin
    if (((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln790_reg_451 == 1'd1) | (icmp_ln801_fu_369_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln790_reg_451 == 1'd1) | (icmp_ln801_fu_369_p2 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_c_blk_n = colorFormat_c_full_n;
    end else begin
        colorFormat_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_c_write = 1'b1;
    end else begin
        colorFormat_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        enableInput_c_blk_n = enableInput_c_full_n;
    end else begin
        enableInput_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        enableInput_c_write = 1'b1;
    end else begin
        enableInput_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_c_blk_n = height_c_full_n;
    end else begin
        height_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_c_write = 1'b1;
    end else begin
        height_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        s_axis_video_TREADY = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_s_axis_video_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        s_axis_video_TREADY = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_s_axis_video_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_axis_video_TREADY = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_s_axis_video_TREADY;
    end else begin
        s_axis_video_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        srcYUV_write = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_srcYUV_write;
    end else begin
        srcYUV_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_c_blk_n = width_c_full_n;
    end else begin
        width_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_c_write = 1'b1;
    end else begin
        width_c_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln790_reg_451 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln790_reg_451 == 1'd1) | (icmp_ln801_fu_369_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((cmp8527_reg_495 == 1'd1) & (icmp_ln790_reg_451 == 1'd0) & (icmp_ln801_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((colorFormat_c_full_n == 1'b0) | (enableInput_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign cmp8527_fu_352_p2 = ((empty_reg_460 == 11'd0) ? 1'b1 : 1'b0);

assign colorFormat_c_din = colorFormat;

assign empty_fu_327_p1 = grp_reg_unsigned_short_s_fu_311_ap_return[10:0];

assign enableInput_c_din = enableInput;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_279_ap_start_reg;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_231_ap_start_reg;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_ap_start_reg;

assign height_c_din = height;

assign i_4_fu_374_p2 = (i_fu_120 + 11'd1);

assign icmp_ln790_fu_317_p2 = ((enableInput == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln801_fu_369_p2 = ((i_fu_120 == trunc_ln783_reg_455) ? 1'b1 : 1'b0);

assign icmp_ln836_fu_331_p2 = ((colorFormat == 8'd0) ? 1'b1 : 1'b0);

assign srcYUV_din = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_251_srcYUV_din;

assign trunc_ln783_fu_323_p1 = grp_reg_unsigned_short_s_fu_305_ap_return[10:0];

assign width_c_din = width;

endmodule //system_v_tpg_0_1_AXIvideo2MultiPixStream