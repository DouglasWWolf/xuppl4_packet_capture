//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sun Apr  7 17:14:12 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module aximm_window_imp_12DPIOM
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aresetn,
    clk,
    window_addr);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aresetn;
  input clk;
  input [63:0]window_addr;

  wire S00_ACLK_1;
  wire [63:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [3:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [63:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [3:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [3:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [3:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire aresetn_1;
  wire [63:0]axi_register_slice_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_M_AXI_ARCACHE;
  wire [3:0]axi_register_slice_M_AXI_ARID;
  wire [7:0]axi_register_slice_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_M_AXI_ARQOS;
  wire axi_register_slice_M_AXI_ARREADY;
  wire axi_register_slice_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_M_AXI_AWCACHE;
  wire [3:0]axi_register_slice_M_AXI_AWID;
  wire [7:0]axi_register_slice_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_M_AXI_AWQOS;
  wire axi_register_slice_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_M_AXI_AWSIZE;
  wire axi_register_slice_M_AXI_AWVALID;
  wire axi_register_slice_M_AXI_BREADY;
  wire [1:0]axi_register_slice_M_AXI_BRESP;
  wire axi_register_slice_M_AXI_BVALID;
  wire [511:0]axi_register_slice_M_AXI_RDATA;
  wire axi_register_slice_M_AXI_RLAST;
  wire axi_register_slice_M_AXI_RREADY;
  wire [1:0]axi_register_slice_M_AXI_RRESP;
  wire axi_register_slice_M_AXI_RVALID;
  wire [511:0]axi_register_slice_M_AXI_WDATA;
  wire axi_register_slice_M_AXI_WLAST;
  wire axi_register_slice_M_AXI_WREADY;
  wire [63:0]axi_register_slice_M_AXI_WSTRB;
  wire axi_register_slice_M_AXI_WVALID;
  wire [63:0]aximm_window_M_AXI_ARADDR;
  wire [1:0]aximm_window_M_AXI_ARBURST;
  wire [3:0]aximm_window_M_AXI_ARCACHE;
  wire [3:0]aximm_window_M_AXI_ARID;
  wire [7:0]aximm_window_M_AXI_ARLEN;
  wire aximm_window_M_AXI_ARLOCK;
  wire [2:0]aximm_window_M_AXI_ARPROT;
  wire [3:0]aximm_window_M_AXI_ARQOS;
  wire aximm_window_M_AXI_ARREADY;
  wire aximm_window_M_AXI_ARVALID;
  wire [63:0]aximm_window_M_AXI_AWADDR;
  wire [1:0]aximm_window_M_AXI_AWBURST;
  wire [3:0]aximm_window_M_AXI_AWCACHE;
  wire [3:0]aximm_window_M_AXI_AWID;
  wire [7:0]aximm_window_M_AXI_AWLEN;
  wire aximm_window_M_AXI_AWLOCK;
  wire [2:0]aximm_window_M_AXI_AWPROT;
  wire [3:0]aximm_window_M_AXI_AWQOS;
  wire aximm_window_M_AXI_AWREADY;
  wire [2:0]aximm_window_M_AXI_AWSIZE;
  wire aximm_window_M_AXI_AWVALID;
  wire aximm_window_M_AXI_BREADY;
  wire [1:0]aximm_window_M_AXI_BRESP;
  wire aximm_window_M_AXI_BVALID;
  wire [511:0]aximm_window_M_AXI_RDATA;
  wire aximm_window_M_AXI_RLAST;
  wire aximm_window_M_AXI_RREADY;
  wire [1:0]aximm_window_M_AXI_RRESP;
  wire aximm_window_M_AXI_RVALID;
  wire [511:0]aximm_window_M_AXI_WDATA;
  wire aximm_window_M_AXI_WLAST;
  wire aximm_window_M_AXI_WREADY;
  wire [63:0]aximm_window_M_AXI_WSTRB;
  wire aximm_window_M_AXI_WVALID;
  wire [63:0]sys_control_window_addr;

  assign M_AXI_araddr[63:0] = aximm_window_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = aximm_window_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = aximm_window_M_AXI_ARCACHE;
  assign M_AXI_arid[3:0] = aximm_window_M_AXI_ARID;
  assign M_AXI_arlen[7:0] = aximm_window_M_AXI_ARLEN;
  assign M_AXI_arlock = aximm_window_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = aximm_window_M_AXI_ARPROT;
  assign M_AXI_arqos[3:0] = aximm_window_M_AXI_ARQOS;
  assign M_AXI_arvalid = aximm_window_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = aximm_window_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = aximm_window_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = aximm_window_M_AXI_AWCACHE;
  assign M_AXI_awid[3:0] = aximm_window_M_AXI_AWID;
  assign M_AXI_awlen[7:0] = aximm_window_M_AXI_AWLEN;
  assign M_AXI_awlock = aximm_window_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = aximm_window_M_AXI_AWPROT;
  assign M_AXI_awqos[3:0] = aximm_window_M_AXI_AWQOS;
  assign M_AXI_awsize[2:0] = aximm_window_M_AXI_AWSIZE;
  assign M_AXI_awvalid = aximm_window_M_AXI_AWVALID;
  assign M_AXI_bready = aximm_window_M_AXI_BREADY;
  assign M_AXI_rready = aximm_window_M_AXI_RREADY;
  assign M_AXI_wdata[511:0] = aximm_window_M_AXI_WDATA;
  assign M_AXI_wlast = aximm_window_M_AXI_WLAST;
  assign M_AXI_wstrb[63:0] = aximm_window_M_AXI_WSTRB;
  assign M_AXI_wvalid = aximm_window_M_AXI_WVALID;
  assign S00_ACLK_1 = clk;
  assign S_AXI_1_ARADDR = S_AXI_araddr[63:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[3:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[63:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[3:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[3:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[3:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign aresetn_1 = aresetn;
  assign aximm_window_M_AXI_ARREADY = M_AXI_arready;
  assign aximm_window_M_AXI_AWREADY = M_AXI_awready;
  assign aximm_window_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign aximm_window_M_AXI_BVALID = M_AXI_bvalid;
  assign aximm_window_M_AXI_RDATA = M_AXI_rdata[511:0];
  assign aximm_window_M_AXI_RLAST = M_AXI_rlast;
  assign aximm_window_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign aximm_window_M_AXI_RVALID = M_AXI_rvalid;
  assign aximm_window_M_AXI_WREADY = M_AXI_wready;
  assign sys_control_window_addr = window_addr[63:0];
  top_level_axi_register_slice_0_0 axi_register_slice
       (.aclk(S00_ACLK_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(axi_register_slice_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_M_AXI_AWVALID),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(axi_register_slice_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_M_AXI_RDATA),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(axi_register_slice_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arburst(S_AXI_1_ARBURST),
        .s_axi_arcache(S_AXI_1_ARCACHE),
        .s_axi_arid(S_AXI_1_ARID),
        .s_axi_arlen(S_AXI_1_ARLEN),
        .s_axi_arlock(S_AXI_1_ARLOCK),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_1_ARSIZE),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awburst(S_AXI_1_AWBURST),
        .s_axi_awcache(S_AXI_1_AWCACHE),
        .s_axi_awid(S_AXI_1_AWID),
        .s_axi_awlen(S_AXI_1_AWLEN),
        .s_axi_awlock(S_AXI_1_AWLOCK),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_1_AWSIZE),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bid(S_AXI_1_BID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rid(S_AXI_1_RID),
        .s_axi_rlast(S_AXI_1_RLAST),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wlast(S_AXI_1_WLAST),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  top_level_aximm_window_0_0 aximm_window
       (.M_AXI_ARADDR(aximm_window_M_AXI_ARADDR),
        .M_AXI_ARBURST(aximm_window_M_AXI_ARBURST),
        .M_AXI_ARCACHE(aximm_window_M_AXI_ARCACHE),
        .M_AXI_ARID(aximm_window_M_AXI_ARID),
        .M_AXI_ARLEN(aximm_window_M_AXI_ARLEN),
        .M_AXI_ARLOCK(aximm_window_M_AXI_ARLOCK),
        .M_AXI_ARPROT(aximm_window_M_AXI_ARPROT),
        .M_AXI_ARQOS(aximm_window_M_AXI_ARQOS),
        .M_AXI_ARREADY(aximm_window_M_AXI_ARREADY),
        .M_AXI_ARVALID(aximm_window_M_AXI_ARVALID),
        .M_AXI_AWADDR(aximm_window_M_AXI_AWADDR),
        .M_AXI_AWBURST(aximm_window_M_AXI_AWBURST),
        .M_AXI_AWCACHE(aximm_window_M_AXI_AWCACHE),
        .M_AXI_AWID(aximm_window_M_AXI_AWID),
        .M_AXI_AWLEN(aximm_window_M_AXI_AWLEN),
        .M_AXI_AWLOCK(aximm_window_M_AXI_AWLOCK),
        .M_AXI_AWPROT(aximm_window_M_AXI_AWPROT),
        .M_AXI_AWQOS(aximm_window_M_AXI_AWQOS),
        .M_AXI_AWREADY(aximm_window_M_AXI_AWREADY),
        .M_AXI_AWSIZE(aximm_window_M_AXI_AWSIZE),
        .M_AXI_AWVALID(aximm_window_M_AXI_AWVALID),
        .M_AXI_BREADY(aximm_window_M_AXI_BREADY),
        .M_AXI_BRESP(aximm_window_M_AXI_BRESP),
        .M_AXI_BVALID(aximm_window_M_AXI_BVALID),
        .M_AXI_RDATA(aximm_window_M_AXI_RDATA),
        .M_AXI_RLAST(aximm_window_M_AXI_RLAST),
        .M_AXI_RREADY(aximm_window_M_AXI_RREADY),
        .M_AXI_RRESP(aximm_window_M_AXI_RRESP),
        .M_AXI_RVALID(aximm_window_M_AXI_RVALID),
        .M_AXI_WDATA(aximm_window_M_AXI_WDATA),
        .M_AXI_WLAST(aximm_window_M_AXI_WLAST),
        .M_AXI_WREADY(aximm_window_M_AXI_WREADY),
        .M_AXI_WSTRB(aximm_window_M_AXI_WSTRB),
        .M_AXI_WVALID(aximm_window_M_AXI_WVALID),
        .S_AXI_ARADDR(axi_register_slice_M_AXI_ARADDR),
        .S_AXI_ARBURST(axi_register_slice_M_AXI_ARBURST),
        .S_AXI_ARCACHE(axi_register_slice_M_AXI_ARCACHE),
        .S_AXI_ARID(axi_register_slice_M_AXI_ARID),
        .S_AXI_ARLEN(axi_register_slice_M_AXI_ARLEN),
        .S_AXI_ARLOCK(axi_register_slice_M_AXI_ARLOCK),
        .S_AXI_ARPROT(axi_register_slice_M_AXI_ARPROT),
        .S_AXI_ARQOS(axi_register_slice_M_AXI_ARQOS),
        .S_AXI_ARREADY(axi_register_slice_M_AXI_ARREADY),
        .S_AXI_ARVALID(axi_register_slice_M_AXI_ARVALID),
        .S_AXI_AWADDR(axi_register_slice_M_AXI_AWADDR),
        .S_AXI_AWBURST(axi_register_slice_M_AXI_AWBURST),
        .S_AXI_AWCACHE(axi_register_slice_M_AXI_AWCACHE),
        .S_AXI_AWID(axi_register_slice_M_AXI_AWID),
        .S_AXI_AWLEN(axi_register_slice_M_AXI_AWLEN),
        .S_AXI_AWLOCK(axi_register_slice_M_AXI_AWLOCK),
        .S_AXI_AWPROT(axi_register_slice_M_AXI_AWPROT),
        .S_AXI_AWQOS(axi_register_slice_M_AXI_AWQOS),
        .S_AXI_AWREADY(axi_register_slice_M_AXI_AWREADY),
        .S_AXI_AWSIZE(axi_register_slice_M_AXI_AWSIZE),
        .S_AXI_AWVALID(axi_register_slice_M_AXI_AWVALID),
        .S_AXI_BREADY(axi_register_slice_M_AXI_BREADY),
        .S_AXI_BRESP(axi_register_slice_M_AXI_BRESP),
        .S_AXI_BVALID(axi_register_slice_M_AXI_BVALID),
        .S_AXI_RDATA(axi_register_slice_M_AXI_RDATA),
        .S_AXI_RLAST(axi_register_slice_M_AXI_RLAST),
        .S_AXI_RREADY(axi_register_slice_M_AXI_RREADY),
        .S_AXI_RRESP(axi_register_slice_M_AXI_RRESP),
        .S_AXI_RVALID(axi_register_slice_M_AXI_RVALID),
        .S_AXI_WDATA(axi_register_slice_M_AXI_WDATA),
        .S_AXI_WLAST(axi_register_slice_M_AXI_WLAST),
        .S_AXI_WREADY(axi_register_slice_M_AXI_WREADY),
        .S_AXI_WSTRB(axi_register_slice_M_AXI_WSTRB),
        .S_AXI_WVALID(axi_register_slice_M_AXI_WVALID),
        .clk(S00_ACLK_1),
        .window_addr(sys_control_window_addr));
endmodule

module channel_0_imp_3EIWA1
   (S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    capture,
    cmac_clock,
    ddr4_act_n,
    ddr4_adr,
    ddr4_ba,
    ddr4_bg,
    ddr4_ck_c,
    ddr4_ck_t,
    ddr4_cke,
    ddr4_clk_clk_n,
    ddr4_clk_clk_p,
    ddr4_cs_n,
    ddr4_dm_n,
    ddr4_dq,
    ddr4_dqs_c,
    ddr4_dqs_t,
    ddr4_odt,
    ddr4_reset_n,
    erase_idle,
    erase_ram,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    init_calib_complete,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    ram_clk,
    ram_resetn_out,
    rx_aligned,
    sys_reset);
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  input capture;
  output cmac_clock;
  output ddr4_act_n;
  output [16:0]ddr4_adr;
  output [1:0]ddr4_ba;
  output [1:0]ddr4_bg;
  output [0:0]ddr4_ck_c;
  output [0:0]ddr4_ck_t;
  output [0:0]ddr4_cke;
  input ddr4_clk_clk_n;
  input ddr4_clk_clk_p;
  output [0:0]ddr4_cs_n;
  inout [7:0]ddr4_dm_n;
  inout [63:0]ddr4_dq;
  inout [7:0]ddr4_dqs_c;
  inout [7:0]ddr4_dqs_t;
  output [0:0]ddr4_odt;
  output ddr4_reset_n;
  output erase_idle;
  input erase_ram;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  output init_calib_complete;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  output ram_clk;
  output [0:0]ram_resetn_out;
  output rx_aligned;
  input sys_reset;

  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [3:0]Conn2_GRX_N;
  wire [3:0]Conn2_GRX_P;
  wire [3:0]Conn2_GTX_N;
  wire [3:0]Conn2_GTX_P;
  wire [511:0]Conn3_TDATA;
  wire [63:0]Conn3_TKEEP;
  wire Conn3_TLAST;
  wire Conn3_TREADY;
  wire Conn3_TVALID;
  wire [511:0]add_header_AXIS_OUT_TDATA;
  wire add_header_AXIS_OUT_TREADY;
  wire add_header_AXIS_OUT_TVALID;
  wire [63:0]axi_crossbar_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_M00_AXI_ARCACHE;
  wire [5:0]axi_crossbar_M00_AXI_ARID;
  wire [7:0]axi_crossbar_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_M00_AXI_ARQOS;
  wire axi_crossbar_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_M00_AXI_AWCACHE;
  wire [5:0]axi_crossbar_M00_AXI_AWID;
  wire [7:0]axi_crossbar_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_M00_AXI_AWQOS;
  wire axi_crossbar_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_M00_AXI_AWVALID;
  wire [5:0]axi_crossbar_M00_AXI_BID;
  wire [0:0]axi_crossbar_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_M00_AXI_BRESP;
  wire axi_crossbar_M00_AXI_BVALID;
  wire [511:0]axi_crossbar_M00_AXI_RDATA;
  wire [5:0]axi_crossbar_M00_AXI_RID;
  wire axi_crossbar_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_M00_AXI_RRESP;
  wire axi_crossbar_M00_AXI_RVALID;
  wire [511:0]axi_crossbar_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_M00_AXI_WLAST;
  wire axi_crossbar_M00_AXI_WREADY;
  wire [63:0]axi_crossbar_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI_BID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI_RID;
  wire [0:0]axi_interconnect_0_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [63:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_0_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_0_M_AXI_ARCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_ARID;
  wire [7:0]axi_register_slice_0_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_0_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_0_M_AXI_ARQOS;
  wire [2:2]axi_register_slice_0_M_AXI_ARREADY;
  wire [2:0]axi_register_slice_0_M_AXI_ARSIZE;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_0_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_0_M_AXI_AWCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_AWID;
  wire [7:0]axi_register_slice_0_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_0_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_0_M_AXI_AWQOS;
  wire [2:2]axi_register_slice_0_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_0_M_AXI_AWSIZE;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire [17:12]axi_register_slice_0_M_AXI_BID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [5:4]axi_register_slice_0_M_AXI_BRESP;
  wire [2:2]axi_register_slice_0_M_AXI_BVALID;
  wire [1535:1024]axi_register_slice_0_M_AXI_RDATA;
  wire [17:12]axi_register_slice_0_M_AXI_RID;
  wire [2:2]axi_register_slice_0_M_AXI_RLAST;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [5:4]axi_register_slice_0_M_AXI_RRESP;
  wire [2:2]axi_register_slice_0_M_AXI_RVALID;
  wire [511:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WLAST;
  wire [2:2]axi_register_slice_0_M_AXI_WREADY;
  wire [63:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire clk_1;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_init_calib_complete;
  wire ddr4_c0_ddr4_ui_clk_sync_rst;
  wire enable_async_1;
  wire [511:0]ethernet_axis_rx0_TDATA;
  wire [63:0]ethernet_axis_rx0_TKEEP;
  wire ethernet_axis_rx0_TLAST;
  wire ethernet_axis_rx0_TVALID;
  wire ethernet_stat_rx_aligned;
  wire [63:0]fill_ram_0_M_AXI_ARADDR;
  wire [1:0]fill_ram_0_M_AXI_ARBURST;
  wire [3:0]fill_ram_0_M_AXI_ARCACHE;
  wire [3:0]fill_ram_0_M_AXI_ARID;
  wire [7:0]fill_ram_0_M_AXI_ARLEN;
  wire fill_ram_0_M_AXI_ARLOCK;
  wire [2:0]fill_ram_0_M_AXI_ARPROT;
  wire [3:0]fill_ram_0_M_AXI_ARQOS;
  wire [1:1]fill_ram_0_M_AXI_ARREADY;
  wire fill_ram_0_M_AXI_ARVALID;
  wire [63:0]fill_ram_0_M_AXI_AWADDR;
  wire [1:0]fill_ram_0_M_AXI_AWBURST;
  wire [3:0]fill_ram_0_M_AXI_AWCACHE;
  wire [3:0]fill_ram_0_M_AXI_AWID;
  wire [7:0]fill_ram_0_M_AXI_AWLEN;
  wire fill_ram_0_M_AXI_AWLOCK;
  wire [2:0]fill_ram_0_M_AXI_AWPROT;
  wire [3:0]fill_ram_0_M_AXI_AWQOS;
  wire [1:1]fill_ram_0_M_AXI_AWREADY;
  wire [2:0]fill_ram_0_M_AXI_AWSIZE;
  wire fill_ram_0_M_AXI_AWVALID;
  wire fill_ram_0_M_AXI_BREADY;
  wire [3:2]fill_ram_0_M_AXI_BRESP;
  wire [1:1]fill_ram_0_M_AXI_BVALID;
  wire [1023:512]fill_ram_0_M_AXI_RDATA;
  wire [1:1]fill_ram_0_M_AXI_RLAST;
  wire fill_ram_0_M_AXI_RREADY;
  wire [3:2]fill_ram_0_M_AXI_RRESP;
  wire [1:1]fill_ram_0_M_AXI_RVALID;
  wire [511:0]fill_ram_0_M_AXI_WDATA;
  wire fill_ram_0_M_AXI_WLAST;
  wire [1:1]fill_ram_0_M_AXI_WREADY;
  wire [63:0]fill_ram_0_M_AXI_WSTRB;
  wire fill_ram_0_M_AXI_WVALID;
  wire fill_ram_idle;
  wire init_clk_1;
  wire [511:0]packet_gate_output_TDATA;
  wire [63:0]packet_gate_output_TKEEP;
  wire packet_gate_output_TLAST;
  wire packet_gate_output_TREADY;
  wire packet_gate_output_TVALID;
  wire [0:0]reset_inverter_Res;
  wire [63:0]stream_to_ram_M_AXI_ARADDR;
  wire [1:0]stream_to_ram_M_AXI_ARBURST;
  wire [3:0]stream_to_ram_M_AXI_ARCACHE;
  wire [3:0]stream_to_ram_M_AXI_ARID;
  wire [7:0]stream_to_ram_M_AXI_ARLEN;
  wire stream_to_ram_M_AXI_ARLOCK;
  wire [2:0]stream_to_ram_M_AXI_ARPROT;
  wire [3:0]stream_to_ram_M_AXI_ARQOS;
  wire stream_to_ram_M_AXI_ARREADY;
  wire stream_to_ram_M_AXI_ARVALID;
  wire [63:0]stream_to_ram_M_AXI_AWADDR;
  wire [1:0]stream_to_ram_M_AXI_AWBURST;
  wire [3:0]stream_to_ram_M_AXI_AWCACHE;
  wire [3:0]stream_to_ram_M_AXI_AWID;
  wire [7:0]stream_to_ram_M_AXI_AWLEN;
  wire stream_to_ram_M_AXI_AWLOCK;
  wire [2:0]stream_to_ram_M_AXI_AWPROT;
  wire [3:0]stream_to_ram_M_AXI_AWQOS;
  wire stream_to_ram_M_AXI_AWREADY;
  wire [2:0]stream_to_ram_M_AXI_AWSIZE;
  wire stream_to_ram_M_AXI_AWVALID;
  wire stream_to_ram_M_AXI_BREADY;
  wire [1:0]stream_to_ram_M_AXI_BRESP;
  wire stream_to_ram_M_AXI_BVALID;
  wire [511:0]stream_to_ram_M_AXI_RDATA;
  wire stream_to_ram_M_AXI_RLAST;
  wire stream_to_ram_M_AXI_RREADY;
  wire [1:0]stream_to_ram_M_AXI_RRESP;
  wire stream_to_ram_M_AXI_RVALID;
  wire [511:0]stream_to_ram_M_AXI_WDATA;
  wire stream_to_ram_M_AXI_WLAST;
  wire stream_to_ram_M_AXI_WREADY;
  wire [63:0]stream_to_ram_M_AXI_WSTRB;
  wire stream_to_ram_M_AXI_WVALID;
  wire sys_sync_start_1;
  wire zero_dout;
  wire [17:0]NLW_axi_crossbar_s_axi_bid_UNCONNECTED;
  wire [17:0]NLW_axi_crossbar_s_axi_rid_UNCONNECTED;

  assign C0_SYS_CLK_0_1_CLK_N = ddr4_clk_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = ddr4_clk_clk_p;
  assign Conn1_CLK_N = qsfp_clk_clk_n;
  assign Conn1_CLK_P = qsfp_clk_clk_p;
  assign Conn2_GRX_N = gt_serial_port_grx_n[3:0];
  assign Conn2_GRX_P = gt_serial_port_grx_p[3:0];
  assign Conn3_TDATA = axis_tx_tdata[511:0];
  assign Conn3_TKEEP = axis_tx_tkeep[63:0];
  assign Conn3_TLAST = axis_tx_tlast;
  assign Conn3_TVALID = axis_tx_tvalid;
  assign S00_AXI_arready[0] = axi_interconnect_0_M00_AXI_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_M00_AXI_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_0_M00_AXI_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_M00_AXI_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_M00_AXI_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_0_M00_AXI_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_0_M00_AXI_RID;
  assign S00_AXI_rlast[0] = axi_interconnect_0_M00_AXI_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_M00_AXI_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_M00_AXI_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_M00_AXI_WREADY;
  assign axi_interconnect_0_M00_AXI_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_0_M00_AXI_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_M00_AXI_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_M00_AXI_ARID = S00_AXI_arid[3:0];
  assign axi_interconnect_0_M00_AXI_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_M00_AXI_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_M00_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_M00_AXI_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_M00_AXI_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_M00_AXI_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_M00_AXI_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_0_M00_AXI_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_M00_AXI_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_M00_AXI_AWID = S00_AXI_awid[3:0];
  assign axi_interconnect_0_M00_AXI_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_M00_AXI_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_M00_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_M00_AXI_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_M00_AXI_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_M00_AXI_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_M00_AXI_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_M00_AXI_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_M00_AXI_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_0_M00_AXI_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_0_M00_AXI_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_0_M00_AXI_WVALID = S00_AXI_wvalid[0];
  assign axis_tx_tready = Conn3_TREADY;
  assign cmac_clock = clk_1;
  assign ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign enable_async_1 = capture;
  assign erase_idle = fill_ram_idle;
  assign gt_serial_port_gtx_n[3:0] = Conn2_GTX_N;
  assign gt_serial_port_gtx_p[3:0] = Conn2_GTX_P;
  assign init_calib_complete = ddr4_0_c0_init_calib_complete;
  assign init_clk_1 = init_clk;
  assign ram_clk = ddr4_0_c0_ddr4_ui_clk;
  assign ram_resetn_out[0] = reset_inverter_Res;
  assign rx_aligned = ethernet_stat_rx_aligned;
  assign sys_sync_start_1 = erase_ram;
  assign zero_dout = sys_reset;
  top_level_add_header_0_0 add_header
       (.AXIS_IN_TDATA(packet_gate_output_TDATA),
        .AXIS_IN_TKEEP(packet_gate_output_TKEEP),
        .AXIS_IN_TLAST(packet_gate_output_TLAST),
        .AXIS_IN_TREADY(packet_gate_output_TREADY),
        .AXIS_IN_TVALID(packet_gate_output_TVALID),
        .AXIS_OUT_TDATA(add_header_AXIS_OUT_TDATA),
        .AXIS_OUT_TREADY(add_header_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(add_header_AXIS_OUT_TVALID),
        .capture_async(enable_async_1),
        .dst_clk(ddr4_0_c0_ddr4_ui_clk),
        .src_clk(clk_1),
        .sys_reset(zero_dout));
  top_level_axi_crossbar_0_0 axi_crossbar
       (.aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(reset_inverter_Res),
        .m_axi_araddr(axi_crossbar_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_M00_AXI_ARBURST),
        .m_axi_arcache(axi_crossbar_M00_AXI_ARCACHE),
        .m_axi_arid(axi_crossbar_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_M00_AXI_ARLEN),
        .m_axi_arlock(axi_crossbar_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_crossbar_M00_AXI_ARPROT),
        .m_axi_arqos(axi_crossbar_M00_AXI_ARQOS),
        .m_axi_arready(axi_crossbar_M00_AXI_ARREADY),
        .m_axi_arsize(axi_crossbar_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_M00_AXI_AWBURST),
        .m_axi_awcache(axi_crossbar_M00_AXI_AWCACHE),
        .m_axi_awid(axi_crossbar_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_M00_AXI_AWLEN),
        .m_axi_awlock(axi_crossbar_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_crossbar_M00_AXI_AWPROT),
        .m_axi_awqos(axi_crossbar_M00_AXI_AWQOS),
        .m_axi_awready(axi_crossbar_M00_AXI_AWREADY),
        .m_axi_awsize(axi_crossbar_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_M00_AXI_BRESP),
        .m_axi_bvalid(axi_crossbar_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_M00_AXI_RRESP),
        .m_axi_rvalid(axi_crossbar_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_M00_AXI_WVALID),
        .s_axi_araddr({axi_register_slice_0_M_AXI_ARADDR,fill_ram_0_M_AXI_ARADDR,axi_interconnect_0_M00_AXI_ARADDR}),
        .s_axi_arburst({axi_register_slice_0_M_AXI_ARBURST,fill_ram_0_M_AXI_ARBURST,axi_interconnect_0_M00_AXI_ARBURST}),
        .s_axi_arcache({axi_register_slice_0_M_AXI_ARCACHE,fill_ram_0_M_AXI_ARCACHE,axi_interconnect_0_M00_AXI_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,axi_register_slice_0_M_AXI_ARID,1'b0,1'b0,fill_ram_0_M_AXI_ARID,1'b0,1'b0,axi_interconnect_0_M00_AXI_ARID}),
        .s_axi_arlen({axi_register_slice_0_M_AXI_ARLEN,fill_ram_0_M_AXI_ARLEN,axi_interconnect_0_M00_AXI_ARLEN}),
        .s_axi_arlock({axi_register_slice_0_M_AXI_ARLOCK,fill_ram_0_M_AXI_ARLOCK,axi_interconnect_0_M00_AXI_ARLOCK}),
        .s_axi_arprot({axi_register_slice_0_M_AXI_ARPROT,fill_ram_0_M_AXI_ARPROT,axi_interconnect_0_M00_AXI_ARPROT}),
        .s_axi_arqos({axi_register_slice_0_M_AXI_ARQOS,fill_ram_0_M_AXI_ARQOS,axi_interconnect_0_M00_AXI_ARQOS}),
        .s_axi_arready({axi_register_slice_0_M_AXI_ARREADY,fill_ram_0_M_AXI_ARREADY,axi_interconnect_0_M00_AXI_ARREADY}),
        .s_axi_arsize({axi_register_slice_0_M_AXI_ARSIZE,1'b1,1'b0,1'b1,axi_interconnect_0_M00_AXI_ARSIZE}),
        .s_axi_arvalid({axi_register_slice_0_M_AXI_ARVALID,fill_ram_0_M_AXI_ARVALID,axi_interconnect_0_M00_AXI_ARVALID}),
        .s_axi_awaddr({axi_register_slice_0_M_AXI_AWADDR,fill_ram_0_M_AXI_AWADDR,axi_interconnect_0_M00_AXI_AWADDR}),
        .s_axi_awburst({axi_register_slice_0_M_AXI_AWBURST,fill_ram_0_M_AXI_AWBURST,axi_interconnect_0_M00_AXI_AWBURST}),
        .s_axi_awcache({axi_register_slice_0_M_AXI_AWCACHE,fill_ram_0_M_AXI_AWCACHE,axi_interconnect_0_M00_AXI_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,axi_register_slice_0_M_AXI_AWID,1'b0,1'b0,fill_ram_0_M_AXI_AWID,1'b0,1'b0,axi_interconnect_0_M00_AXI_AWID}),
        .s_axi_awlen({axi_register_slice_0_M_AXI_AWLEN,fill_ram_0_M_AXI_AWLEN,axi_interconnect_0_M00_AXI_AWLEN}),
        .s_axi_awlock({axi_register_slice_0_M_AXI_AWLOCK,fill_ram_0_M_AXI_AWLOCK,axi_interconnect_0_M00_AXI_AWLOCK}),
        .s_axi_awprot({axi_register_slice_0_M_AXI_AWPROT,fill_ram_0_M_AXI_AWPROT,axi_interconnect_0_M00_AXI_AWPROT}),
        .s_axi_awqos({axi_register_slice_0_M_AXI_AWQOS,fill_ram_0_M_AXI_AWQOS,axi_interconnect_0_M00_AXI_AWQOS}),
        .s_axi_awready({axi_register_slice_0_M_AXI_AWREADY,fill_ram_0_M_AXI_AWREADY,axi_interconnect_0_M00_AXI_AWREADY}),
        .s_axi_awsize({axi_register_slice_0_M_AXI_AWSIZE,fill_ram_0_M_AXI_AWSIZE,axi_interconnect_0_M00_AXI_AWSIZE}),
        .s_axi_awvalid({axi_register_slice_0_M_AXI_AWVALID,fill_ram_0_M_AXI_AWVALID,axi_interconnect_0_M00_AXI_AWVALID}),
        .s_axi_bid({axi_register_slice_0_M_AXI_BID,NLW_axi_crossbar_s_axi_bid_UNCONNECTED[11:6],axi_interconnect_0_M00_AXI_BID}),
        .s_axi_bready({axi_register_slice_0_M_AXI_BREADY,fill_ram_0_M_AXI_BREADY,axi_interconnect_0_M00_AXI_BREADY}),
        .s_axi_bresp({axi_register_slice_0_M_AXI_BRESP,fill_ram_0_M_AXI_BRESP,axi_interconnect_0_M00_AXI_BRESP}),
        .s_axi_bvalid({axi_register_slice_0_M_AXI_BVALID,fill_ram_0_M_AXI_BVALID,axi_interconnect_0_M00_AXI_BVALID}),
        .s_axi_rdata({axi_register_slice_0_M_AXI_RDATA,fill_ram_0_M_AXI_RDATA,axi_interconnect_0_M00_AXI_RDATA}),
        .s_axi_rid({axi_register_slice_0_M_AXI_RID,NLW_axi_crossbar_s_axi_rid_UNCONNECTED[11:6],axi_interconnect_0_M00_AXI_RID}),
        .s_axi_rlast({axi_register_slice_0_M_AXI_RLAST,fill_ram_0_M_AXI_RLAST,axi_interconnect_0_M00_AXI_RLAST}),
        .s_axi_rready({axi_register_slice_0_M_AXI_RREADY,fill_ram_0_M_AXI_RREADY,axi_interconnect_0_M00_AXI_RREADY}),
        .s_axi_rresp({axi_register_slice_0_M_AXI_RRESP,fill_ram_0_M_AXI_RRESP,axi_interconnect_0_M00_AXI_RRESP}),
        .s_axi_rvalid({axi_register_slice_0_M_AXI_RVALID,fill_ram_0_M_AXI_RVALID,axi_interconnect_0_M00_AXI_RVALID}),
        .s_axi_wdata({axi_register_slice_0_M_AXI_WDATA,fill_ram_0_M_AXI_WDATA,axi_interconnect_0_M00_AXI_WDATA}),
        .s_axi_wlast({axi_register_slice_0_M_AXI_WLAST,fill_ram_0_M_AXI_WLAST,axi_interconnect_0_M00_AXI_WLAST}),
        .s_axi_wready({axi_register_slice_0_M_AXI_WREADY,fill_ram_0_M_AXI_WREADY,axi_interconnect_0_M00_AXI_WREADY}),
        .s_axi_wstrb({axi_register_slice_0_M_AXI_WSTRB,fill_ram_0_M_AXI_WSTRB,axi_interconnect_0_M00_AXI_WSTRB}),
        .s_axi_wvalid({axi_register_slice_0_M_AXI_WVALID,fill_ram_0_M_AXI_WVALID,axi_interconnect_0_M00_AXI_WVALID}));
  top_level_ddr4_0_0 ddr4
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(reset_inverter_Res),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(ddr4_dm_n[7:0]),
        .c0_ddr4_dq(ddr4_dq[63:0]),
        .c0_ddr4_dqs_c(ddr4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(ddr4_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_crossbar_M00_AXI_ARADDR[31:0]),
        .c0_ddr4_s_axi_arburst(axi_crossbar_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_crossbar_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_crossbar_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_crossbar_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_crossbar_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_crossbar_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_crossbar_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_crossbar_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_crossbar_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_crossbar_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_crossbar_M00_AXI_AWADDR[31:0]),
        .c0_ddr4_s_axi_awburst(axi_crossbar_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_crossbar_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_crossbar_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_crossbar_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_crossbar_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_crossbar_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_crossbar_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_crossbar_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_crossbar_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_crossbar_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_crossbar_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_crossbar_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_crossbar_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_crossbar_M00_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(axi_crossbar_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_crossbar_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_crossbar_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_crossbar_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_crossbar_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_crossbar_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_crossbar_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_crossbar_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_crossbar_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_crossbar_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_crossbar_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_0_c0_init_calib_complete),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(zero_dout));
  top_level_util_vector_logic_0_0 ddr4_reset_inverter
       (.Op1(ddr4_c0_ddr4_ui_clk_sync_rst),
        .Res(reset_inverter_Res));
  ethernet_imp_1GLTXGE ethernet
       (.axis_rx_tdata(ethernet_axis_rx0_TDATA),
        .axis_rx_tkeep(ethernet_axis_rx0_TKEEP),
        .axis_rx_tlast(ethernet_axis_rx0_TLAST),
        .axis_rx_tvalid(ethernet_axis_rx0_TVALID),
        .axis_tx_tdata(Conn3_TDATA),
        .axis_tx_tkeep(Conn3_TKEEP),
        .axis_tx_tlast(Conn3_TLAST),
        .axis_tx_tready(Conn3_TREADY),
        .axis_tx_tvalid(Conn3_TVALID),
        .cmac_clock(clk_1),
        .gt_ref_clk_clk_n(Conn1_CLK_N),
        .gt_ref_clk_clk_p(Conn1_CLK_P),
        .gt_serial_port_grx_n(Conn2_GRX_N),
        .gt_serial_port_grx_p(Conn2_GRX_P),
        .gt_serial_port_gtx_n(Conn2_GTX_N),
        .gt_serial_port_gtx_p(Conn2_GTX_P),
        .init_clk(init_clk_1),
        .rx_aligned(ethernet_stat_rx_aligned));
  top_level_fill_ram_0_0 fill_ram
       (.M_AXI_ARADDR(fill_ram_0_M_AXI_ARADDR),
        .M_AXI_ARBURST(fill_ram_0_M_AXI_ARBURST),
        .M_AXI_ARCACHE(fill_ram_0_M_AXI_ARCACHE),
        .M_AXI_ARID(fill_ram_0_M_AXI_ARID),
        .M_AXI_ARLEN(fill_ram_0_M_AXI_ARLEN),
        .M_AXI_ARLOCK(fill_ram_0_M_AXI_ARLOCK),
        .M_AXI_ARPROT(fill_ram_0_M_AXI_ARPROT),
        .M_AXI_ARQOS(fill_ram_0_M_AXI_ARQOS),
        .M_AXI_ARREADY(fill_ram_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(fill_ram_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(fill_ram_0_M_AXI_AWADDR),
        .M_AXI_AWBURST(fill_ram_0_M_AXI_AWBURST),
        .M_AXI_AWCACHE(fill_ram_0_M_AXI_AWCACHE),
        .M_AXI_AWID(fill_ram_0_M_AXI_AWID),
        .M_AXI_AWLEN(fill_ram_0_M_AXI_AWLEN),
        .M_AXI_AWLOCK(fill_ram_0_M_AXI_AWLOCK),
        .M_AXI_AWPROT(fill_ram_0_M_AXI_AWPROT),
        .M_AXI_AWQOS(fill_ram_0_M_AXI_AWQOS),
        .M_AXI_AWREADY(fill_ram_0_M_AXI_AWREADY),
        .M_AXI_AWSIZE(fill_ram_0_M_AXI_AWSIZE),
        .M_AXI_AWVALID(fill_ram_0_M_AXI_AWVALID),
        .M_AXI_BREADY(fill_ram_0_M_AXI_BREADY),
        .M_AXI_BRESP(fill_ram_0_M_AXI_BRESP),
        .M_AXI_BVALID(fill_ram_0_M_AXI_BVALID),
        .M_AXI_RDATA(fill_ram_0_M_AXI_RDATA),
        .M_AXI_RLAST(fill_ram_0_M_AXI_RLAST),
        .M_AXI_RREADY(fill_ram_0_M_AXI_RREADY),
        .M_AXI_RRESP(fill_ram_0_M_AXI_RRESP),
        .M_AXI_RVALID(fill_ram_0_M_AXI_RVALID),
        .M_AXI_WDATA(fill_ram_0_M_AXI_WDATA),
        .M_AXI_WLAST(fill_ram_0_M_AXI_WLAST),
        .M_AXI_WREADY(fill_ram_0_M_AXI_WREADY),
        .M_AXI_WSTRB(fill_ram_0_M_AXI_WSTRB),
        .M_AXI_WVALID(fill_ram_0_M_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .idle(fill_ram_idle),
        .reset(ddr4_c0_ddr4_ui_clk_sync_rst),
        .start_async(sys_sync_start_1));
  top_level_packet_gate_0_0 packet_gate
       (.AXIS_IN_TDATA(ethernet_axis_rx0_TDATA),
        .AXIS_IN_TKEEP(ethernet_axis_rx0_TKEEP),
        .AXIS_IN_TLAST(ethernet_axis_rx0_TLAST),
        .AXIS_IN_TVALID(ethernet_axis_rx0_TVALID),
        .AXIS_OUT_TDATA(packet_gate_output_TDATA),
        .AXIS_OUT_TKEEP(packet_gate_output_TKEEP),
        .AXIS_OUT_TLAST(packet_gate_output_TLAST),
        .AXIS_OUT_TREADY(packet_gate_output_TREADY),
        .AXIS_OUT_TVALID(packet_gate_output_TVALID),
        .clk(clk_1),
        .enable_async(enable_async_1),
        .sys_reset(zero_dout));
  top_level_stream_to_ram_0_0 stream_to_ram
       (.AXIS_IN_TDATA(add_header_AXIS_OUT_TDATA),
        .AXIS_IN_TREADY(add_header_AXIS_OUT_TREADY),
        .AXIS_IN_TVALID(add_header_AXIS_OUT_TVALID),
        .M_AXI_ARADDR(stream_to_ram_M_AXI_ARADDR),
        .M_AXI_ARBURST(stream_to_ram_M_AXI_ARBURST),
        .M_AXI_ARCACHE(stream_to_ram_M_AXI_ARCACHE),
        .M_AXI_ARID(stream_to_ram_M_AXI_ARID),
        .M_AXI_ARLEN(stream_to_ram_M_AXI_ARLEN),
        .M_AXI_ARLOCK(stream_to_ram_M_AXI_ARLOCK),
        .M_AXI_ARPROT(stream_to_ram_M_AXI_ARPROT),
        .M_AXI_ARQOS(stream_to_ram_M_AXI_ARQOS),
        .M_AXI_ARREADY(stream_to_ram_M_AXI_ARREADY),
        .M_AXI_ARVALID(stream_to_ram_M_AXI_ARVALID),
        .M_AXI_AWADDR(stream_to_ram_M_AXI_AWADDR),
        .M_AXI_AWBURST(stream_to_ram_M_AXI_AWBURST),
        .M_AXI_AWCACHE(stream_to_ram_M_AXI_AWCACHE),
        .M_AXI_AWID(stream_to_ram_M_AXI_AWID),
        .M_AXI_AWLEN(stream_to_ram_M_AXI_AWLEN),
        .M_AXI_AWLOCK(stream_to_ram_M_AXI_AWLOCK),
        .M_AXI_AWPROT(stream_to_ram_M_AXI_AWPROT),
        .M_AXI_AWQOS(stream_to_ram_M_AXI_AWQOS),
        .M_AXI_AWREADY(stream_to_ram_M_AXI_AWREADY),
        .M_AXI_AWSIZE(stream_to_ram_M_AXI_AWSIZE),
        .M_AXI_AWVALID(stream_to_ram_M_AXI_AWVALID),
        .M_AXI_BREADY(stream_to_ram_M_AXI_BREADY),
        .M_AXI_BRESP(stream_to_ram_M_AXI_BRESP),
        .M_AXI_BVALID(stream_to_ram_M_AXI_BVALID),
        .M_AXI_RDATA(stream_to_ram_M_AXI_RDATA),
        .M_AXI_RLAST(stream_to_ram_M_AXI_RLAST),
        .M_AXI_RREADY(stream_to_ram_M_AXI_RREADY),
        .M_AXI_RRESP(stream_to_ram_M_AXI_RRESP),
        .M_AXI_RVALID(stream_to_ram_M_AXI_RVALID),
        .M_AXI_WDATA(stream_to_ram_M_AXI_WDATA),
        .M_AXI_WLAST(stream_to_ram_M_AXI_WLAST),
        .M_AXI_WREADY(stream_to_ram_M_AXI_WREADY),
        .M_AXI_WSTRB(stream_to_ram_M_AXI_WSTRB),
        .M_AXI_WVALID(stream_to_ram_M_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .sys_reset(zero_dout));
  top_level_axi_register_slice_0_1 to_xbar_slice
       (.aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(reset_inverter_Res),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_0_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_0_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_0_M_AXI_BID[15:12]),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_0_M_AXI_RID[15:12]),
        .m_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(stream_to_ram_M_AXI_ARADDR),
        .s_axi_arburst(stream_to_ram_M_AXI_ARBURST),
        .s_axi_arcache(stream_to_ram_M_AXI_ARCACHE),
        .s_axi_arid(stream_to_ram_M_AXI_ARID),
        .s_axi_arlen(stream_to_ram_M_AXI_ARLEN),
        .s_axi_arlock(stream_to_ram_M_AXI_ARLOCK),
        .s_axi_arprot(stream_to_ram_M_AXI_ARPROT),
        .s_axi_arqos(stream_to_ram_M_AXI_ARQOS),
        .s_axi_arready(stream_to_ram_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(stream_to_ram_M_AXI_ARVALID),
        .s_axi_awaddr(stream_to_ram_M_AXI_AWADDR),
        .s_axi_awburst(stream_to_ram_M_AXI_AWBURST),
        .s_axi_awcache(stream_to_ram_M_AXI_AWCACHE),
        .s_axi_awid(stream_to_ram_M_AXI_AWID),
        .s_axi_awlen(stream_to_ram_M_AXI_AWLEN),
        .s_axi_awlock(stream_to_ram_M_AXI_AWLOCK),
        .s_axi_awprot(stream_to_ram_M_AXI_AWPROT),
        .s_axi_awqos(stream_to_ram_M_AXI_AWQOS),
        .s_axi_awready(stream_to_ram_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(stream_to_ram_M_AXI_AWSIZE),
        .s_axi_awvalid(stream_to_ram_M_AXI_AWVALID),
        .s_axi_bready(stream_to_ram_M_AXI_BREADY),
        .s_axi_bresp(stream_to_ram_M_AXI_BRESP),
        .s_axi_bvalid(stream_to_ram_M_AXI_BVALID),
        .s_axi_rdata(stream_to_ram_M_AXI_RDATA),
        .s_axi_rlast(stream_to_ram_M_AXI_RLAST),
        .s_axi_rready(stream_to_ram_M_AXI_RREADY),
        .s_axi_rresp(stream_to_ram_M_AXI_RRESP),
        .s_axi_rvalid(stream_to_ram_M_AXI_RVALID),
        .s_axi_wdata(stream_to_ram_M_AXI_WDATA),
        .s_axi_wlast(stream_to_ram_M_AXI_WLAST),
        .s_axi_wready(stream_to_ram_M_AXI_WREADY),
        .s_axi_wstrb(stream_to_ram_M_AXI_WSTRB),
        .s_axi_wvalid(stream_to_ram_M_AXI_WVALID));
endmodule

module channel_1_imp_1R4OFYV
   (S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    capture,
    cmac_clock,
    ddr4_act_n,
    ddr4_adr,
    ddr4_ba,
    ddr4_bg,
    ddr4_ck_c,
    ddr4_ck_t,
    ddr4_cke,
    ddr4_clk_clk_n,
    ddr4_clk_clk_p,
    ddr4_cs_n,
    ddr4_dm_n,
    ddr4_dq,
    ddr4_dqs_c,
    ddr4_dqs_t,
    ddr4_odt,
    ddr4_reset_n,
    erase_idle,
    erase_ram,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    init_calib_complete,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    ram_clk,
    ram_resetn_out,
    rx_aligned,
    sys_reset);
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  input capture;
  output cmac_clock;
  output ddr4_act_n;
  output [16:0]ddr4_adr;
  output [1:0]ddr4_ba;
  output [1:0]ddr4_bg;
  output [0:0]ddr4_ck_c;
  output [0:0]ddr4_ck_t;
  output [0:0]ddr4_cke;
  input ddr4_clk_clk_n;
  input ddr4_clk_clk_p;
  output [0:0]ddr4_cs_n;
  inout [7:0]ddr4_dm_n;
  inout [63:0]ddr4_dq;
  inout [7:0]ddr4_dqs_c;
  inout [7:0]ddr4_dqs_t;
  output [0:0]ddr4_odt;
  output ddr4_reset_n;
  output erase_idle;
  input erase_ram;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  output init_calib_complete;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  output ram_clk;
  output [0:0]ram_resetn_out;
  output rx_aligned;
  input sys_reset;

  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [3:0]Conn2_GRX_N;
  wire [3:0]Conn2_GRX_P;
  wire [3:0]Conn2_GTX_N;
  wire [3:0]Conn2_GTX_P;
  wire [511:0]Conn3_TDATA;
  wire [63:0]Conn3_TKEEP;
  wire Conn3_TLAST;
  wire Conn3_TREADY;
  wire Conn3_TVALID;
  wire [511:0]add_header_AXIS_OUT_TDATA;
  wire add_header_AXIS_OUT_TREADY;
  wire add_header_AXIS_OUT_TVALID;
  wire [63:0]axi_crossbar_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_M00_AXI_ARCACHE;
  wire [5:0]axi_crossbar_M00_AXI_ARID;
  wire [7:0]axi_crossbar_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_M00_AXI_ARQOS;
  wire axi_crossbar_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_M00_AXI_ARVALID;
  wire [63:0]axi_crossbar_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_M00_AXI_AWCACHE;
  wire [5:0]axi_crossbar_M00_AXI_AWID;
  wire [7:0]axi_crossbar_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_M00_AXI_AWQOS;
  wire axi_crossbar_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_M00_AXI_AWVALID;
  wire [5:0]axi_crossbar_M00_AXI_BID;
  wire [0:0]axi_crossbar_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_M00_AXI_BRESP;
  wire axi_crossbar_M00_AXI_BVALID;
  wire [511:0]axi_crossbar_M00_AXI_RDATA;
  wire [5:0]axi_crossbar_M00_AXI_RID;
  wire axi_crossbar_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_M00_AXI_RRESP;
  wire axi_crossbar_M00_AXI_RVALID;
  wire [511:0]axi_crossbar_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_M00_AXI_WLAST;
  wire axi_crossbar_M00_AXI_WREADY;
  wire [63:0]axi_crossbar_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI_BID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI_RID;
  wire [0:0]axi_interconnect_0_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [63:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_0_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_0_M_AXI_ARCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_ARID;
  wire [7:0]axi_register_slice_0_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_0_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_0_M_AXI_ARQOS;
  wire [2:2]axi_register_slice_0_M_AXI_ARREADY;
  wire [2:0]axi_register_slice_0_M_AXI_ARSIZE;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_0_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_0_M_AXI_AWCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_AWID;
  wire [7:0]axi_register_slice_0_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_0_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_0_M_AXI_AWQOS;
  wire [2:2]axi_register_slice_0_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_0_M_AXI_AWSIZE;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire [17:12]axi_register_slice_0_M_AXI_BID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [5:4]axi_register_slice_0_M_AXI_BRESP;
  wire [2:2]axi_register_slice_0_M_AXI_BVALID;
  wire [1535:1024]axi_register_slice_0_M_AXI_RDATA;
  wire [17:12]axi_register_slice_0_M_AXI_RID;
  wire [2:2]axi_register_slice_0_M_AXI_RLAST;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [5:4]axi_register_slice_0_M_AXI_RRESP;
  wire [2:2]axi_register_slice_0_M_AXI_RVALID;
  wire [511:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WLAST;
  wire [2:2]axi_register_slice_0_M_AXI_WREADY;
  wire [63:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire clk_1;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_init_calib_complete;
  wire ddr4_c0_ddr4_ui_clk_sync_rst;
  wire enable_async_1;
  wire [511:0]ethernet_axis_rx0_TDATA;
  wire [63:0]ethernet_axis_rx0_TKEEP;
  wire ethernet_axis_rx0_TLAST;
  wire ethernet_axis_rx0_TVALID;
  wire ethernet_stat_rx_aligned;
  wire [63:0]fill_ram_0_M_AXI_ARADDR;
  wire [1:0]fill_ram_0_M_AXI_ARBURST;
  wire [3:0]fill_ram_0_M_AXI_ARCACHE;
  wire [3:0]fill_ram_0_M_AXI_ARID;
  wire [7:0]fill_ram_0_M_AXI_ARLEN;
  wire fill_ram_0_M_AXI_ARLOCK;
  wire [2:0]fill_ram_0_M_AXI_ARPROT;
  wire [3:0]fill_ram_0_M_AXI_ARQOS;
  wire [1:1]fill_ram_0_M_AXI_ARREADY;
  wire fill_ram_0_M_AXI_ARVALID;
  wire [63:0]fill_ram_0_M_AXI_AWADDR;
  wire [1:0]fill_ram_0_M_AXI_AWBURST;
  wire [3:0]fill_ram_0_M_AXI_AWCACHE;
  wire [3:0]fill_ram_0_M_AXI_AWID;
  wire [7:0]fill_ram_0_M_AXI_AWLEN;
  wire fill_ram_0_M_AXI_AWLOCK;
  wire [2:0]fill_ram_0_M_AXI_AWPROT;
  wire [3:0]fill_ram_0_M_AXI_AWQOS;
  wire [1:1]fill_ram_0_M_AXI_AWREADY;
  wire [2:0]fill_ram_0_M_AXI_AWSIZE;
  wire fill_ram_0_M_AXI_AWVALID;
  wire fill_ram_0_M_AXI_BREADY;
  wire [3:2]fill_ram_0_M_AXI_BRESP;
  wire [1:1]fill_ram_0_M_AXI_BVALID;
  wire [1023:512]fill_ram_0_M_AXI_RDATA;
  wire [1:1]fill_ram_0_M_AXI_RLAST;
  wire fill_ram_0_M_AXI_RREADY;
  wire [3:2]fill_ram_0_M_AXI_RRESP;
  wire [1:1]fill_ram_0_M_AXI_RVALID;
  wire [511:0]fill_ram_0_M_AXI_WDATA;
  wire fill_ram_0_M_AXI_WLAST;
  wire [1:1]fill_ram_0_M_AXI_WREADY;
  wire [63:0]fill_ram_0_M_AXI_WSTRB;
  wire fill_ram_0_M_AXI_WVALID;
  wire fill_ram_idle;
  wire init_clk_1;
  wire [511:0]packet_gate_output_TDATA;
  wire [63:0]packet_gate_output_TKEEP;
  wire packet_gate_output_TLAST;
  wire packet_gate_output_TREADY;
  wire packet_gate_output_TVALID;
  wire [0:0]reset_inverter_Res;
  wire [63:0]stream_to_ram_M_AXI_ARADDR;
  wire [1:0]stream_to_ram_M_AXI_ARBURST;
  wire [3:0]stream_to_ram_M_AXI_ARCACHE;
  wire [3:0]stream_to_ram_M_AXI_ARID;
  wire [7:0]stream_to_ram_M_AXI_ARLEN;
  wire stream_to_ram_M_AXI_ARLOCK;
  wire [2:0]stream_to_ram_M_AXI_ARPROT;
  wire [3:0]stream_to_ram_M_AXI_ARQOS;
  wire stream_to_ram_M_AXI_ARREADY;
  wire stream_to_ram_M_AXI_ARVALID;
  wire [63:0]stream_to_ram_M_AXI_AWADDR;
  wire [1:0]stream_to_ram_M_AXI_AWBURST;
  wire [3:0]stream_to_ram_M_AXI_AWCACHE;
  wire [3:0]stream_to_ram_M_AXI_AWID;
  wire [7:0]stream_to_ram_M_AXI_AWLEN;
  wire stream_to_ram_M_AXI_AWLOCK;
  wire [2:0]stream_to_ram_M_AXI_AWPROT;
  wire [3:0]stream_to_ram_M_AXI_AWQOS;
  wire stream_to_ram_M_AXI_AWREADY;
  wire [2:0]stream_to_ram_M_AXI_AWSIZE;
  wire stream_to_ram_M_AXI_AWVALID;
  wire stream_to_ram_M_AXI_BREADY;
  wire [1:0]stream_to_ram_M_AXI_BRESP;
  wire stream_to_ram_M_AXI_BVALID;
  wire [511:0]stream_to_ram_M_AXI_RDATA;
  wire stream_to_ram_M_AXI_RLAST;
  wire stream_to_ram_M_AXI_RREADY;
  wire [1:0]stream_to_ram_M_AXI_RRESP;
  wire stream_to_ram_M_AXI_RVALID;
  wire [511:0]stream_to_ram_M_AXI_WDATA;
  wire stream_to_ram_M_AXI_WLAST;
  wire stream_to_ram_M_AXI_WREADY;
  wire [63:0]stream_to_ram_M_AXI_WSTRB;
  wire stream_to_ram_M_AXI_WVALID;
  wire sys_sync_start_1;
  wire zero_dout;
  wire [17:0]NLW_axi_crossbar_s_axi_bid_UNCONNECTED;
  wire [17:0]NLW_axi_crossbar_s_axi_rid_UNCONNECTED;

  assign C0_SYS_CLK_0_1_CLK_N = ddr4_clk_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = ddr4_clk_clk_p;
  assign Conn1_CLK_N = qsfp_clk_clk_n;
  assign Conn1_CLK_P = qsfp_clk_clk_p;
  assign Conn2_GRX_N = gt_serial_port_grx_n[3:0];
  assign Conn2_GRX_P = gt_serial_port_grx_p[3:0];
  assign Conn3_TDATA = axis_tx_tdata[511:0];
  assign Conn3_TKEEP = axis_tx_tkeep[63:0];
  assign Conn3_TLAST = axis_tx_tlast;
  assign Conn3_TVALID = axis_tx_tvalid;
  assign S00_AXI_arready[0] = axi_interconnect_0_M00_AXI_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_M00_AXI_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_0_M00_AXI_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_M00_AXI_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_M00_AXI_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_0_M00_AXI_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_0_M00_AXI_RID;
  assign S00_AXI_rlast[0] = axi_interconnect_0_M00_AXI_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_M00_AXI_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_M00_AXI_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_M00_AXI_WREADY;
  assign axi_interconnect_0_M00_AXI_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_0_M00_AXI_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_M00_AXI_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_M00_AXI_ARID = S00_AXI_arid[3:0];
  assign axi_interconnect_0_M00_AXI_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_M00_AXI_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_M00_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_M00_AXI_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_M00_AXI_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_M00_AXI_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_M00_AXI_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_0_M00_AXI_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_M00_AXI_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_M00_AXI_AWID = S00_AXI_awid[3:0];
  assign axi_interconnect_0_M00_AXI_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_M00_AXI_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_M00_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_M00_AXI_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_M00_AXI_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_M00_AXI_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_M00_AXI_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_M00_AXI_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_M00_AXI_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_0_M00_AXI_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_0_M00_AXI_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_0_M00_AXI_WVALID = S00_AXI_wvalid[0];
  assign axis_tx_tready = Conn3_TREADY;
  assign cmac_clock = clk_1;
  assign ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign enable_async_1 = capture;
  assign erase_idle = fill_ram_idle;
  assign gt_serial_port_gtx_n[3:0] = Conn2_GTX_N;
  assign gt_serial_port_gtx_p[3:0] = Conn2_GTX_P;
  assign init_calib_complete = ddr4_0_c0_init_calib_complete;
  assign init_clk_1 = init_clk;
  assign ram_clk = ddr4_0_c0_ddr4_ui_clk;
  assign ram_resetn_out[0] = reset_inverter_Res;
  assign rx_aligned = ethernet_stat_rx_aligned;
  assign sys_sync_start_1 = erase_ram;
  assign zero_dout = sys_reset;
  top_level_add_header_1 add_header
       (.AXIS_IN_TDATA(packet_gate_output_TDATA),
        .AXIS_IN_TKEEP(packet_gate_output_TKEEP),
        .AXIS_IN_TLAST(packet_gate_output_TLAST),
        .AXIS_IN_TREADY(packet_gate_output_TREADY),
        .AXIS_IN_TVALID(packet_gate_output_TVALID),
        .AXIS_OUT_TDATA(add_header_AXIS_OUT_TDATA),
        .AXIS_OUT_TREADY(add_header_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(add_header_AXIS_OUT_TVALID),
        .capture_async(enable_async_1),
        .dst_clk(ddr4_0_c0_ddr4_ui_clk),
        .src_clk(clk_1),
        .sys_reset(zero_dout));
  top_level_axi_crossbar_1 axi_crossbar
       (.aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(reset_inverter_Res),
        .m_axi_araddr(axi_crossbar_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_M00_AXI_ARBURST),
        .m_axi_arcache(axi_crossbar_M00_AXI_ARCACHE),
        .m_axi_arid(axi_crossbar_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_M00_AXI_ARLEN),
        .m_axi_arlock(axi_crossbar_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_crossbar_M00_AXI_ARPROT),
        .m_axi_arqos(axi_crossbar_M00_AXI_ARQOS),
        .m_axi_arready(axi_crossbar_M00_AXI_ARREADY),
        .m_axi_arsize(axi_crossbar_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_M00_AXI_AWBURST),
        .m_axi_awcache(axi_crossbar_M00_AXI_AWCACHE),
        .m_axi_awid(axi_crossbar_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_M00_AXI_AWLEN),
        .m_axi_awlock(axi_crossbar_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_crossbar_M00_AXI_AWPROT),
        .m_axi_awqos(axi_crossbar_M00_AXI_AWQOS),
        .m_axi_awready(axi_crossbar_M00_AXI_AWREADY),
        .m_axi_awsize(axi_crossbar_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_M00_AXI_BRESP),
        .m_axi_bvalid(axi_crossbar_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_M00_AXI_RRESP),
        .m_axi_rvalid(axi_crossbar_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_M00_AXI_WVALID),
        .s_axi_araddr({axi_register_slice_0_M_AXI_ARADDR,fill_ram_0_M_AXI_ARADDR,axi_interconnect_0_M00_AXI_ARADDR}),
        .s_axi_arburst({axi_register_slice_0_M_AXI_ARBURST,fill_ram_0_M_AXI_ARBURST,axi_interconnect_0_M00_AXI_ARBURST}),
        .s_axi_arcache({axi_register_slice_0_M_AXI_ARCACHE,fill_ram_0_M_AXI_ARCACHE,axi_interconnect_0_M00_AXI_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,axi_register_slice_0_M_AXI_ARID,1'b0,1'b0,fill_ram_0_M_AXI_ARID,1'b0,1'b0,axi_interconnect_0_M00_AXI_ARID}),
        .s_axi_arlen({axi_register_slice_0_M_AXI_ARLEN,fill_ram_0_M_AXI_ARLEN,axi_interconnect_0_M00_AXI_ARLEN}),
        .s_axi_arlock({axi_register_slice_0_M_AXI_ARLOCK,fill_ram_0_M_AXI_ARLOCK,axi_interconnect_0_M00_AXI_ARLOCK}),
        .s_axi_arprot({axi_register_slice_0_M_AXI_ARPROT,fill_ram_0_M_AXI_ARPROT,axi_interconnect_0_M00_AXI_ARPROT}),
        .s_axi_arqos({axi_register_slice_0_M_AXI_ARQOS,fill_ram_0_M_AXI_ARQOS,axi_interconnect_0_M00_AXI_ARQOS}),
        .s_axi_arready({axi_register_slice_0_M_AXI_ARREADY,fill_ram_0_M_AXI_ARREADY,axi_interconnect_0_M00_AXI_ARREADY}),
        .s_axi_arsize({axi_register_slice_0_M_AXI_ARSIZE,1'b1,1'b0,1'b1,axi_interconnect_0_M00_AXI_ARSIZE}),
        .s_axi_arvalid({axi_register_slice_0_M_AXI_ARVALID,fill_ram_0_M_AXI_ARVALID,axi_interconnect_0_M00_AXI_ARVALID}),
        .s_axi_awaddr({axi_register_slice_0_M_AXI_AWADDR,fill_ram_0_M_AXI_AWADDR,axi_interconnect_0_M00_AXI_AWADDR}),
        .s_axi_awburst({axi_register_slice_0_M_AXI_AWBURST,fill_ram_0_M_AXI_AWBURST,axi_interconnect_0_M00_AXI_AWBURST}),
        .s_axi_awcache({axi_register_slice_0_M_AXI_AWCACHE,fill_ram_0_M_AXI_AWCACHE,axi_interconnect_0_M00_AXI_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,axi_register_slice_0_M_AXI_AWID,1'b0,1'b0,fill_ram_0_M_AXI_AWID,1'b0,1'b0,axi_interconnect_0_M00_AXI_AWID}),
        .s_axi_awlen({axi_register_slice_0_M_AXI_AWLEN,fill_ram_0_M_AXI_AWLEN,axi_interconnect_0_M00_AXI_AWLEN}),
        .s_axi_awlock({axi_register_slice_0_M_AXI_AWLOCK,fill_ram_0_M_AXI_AWLOCK,axi_interconnect_0_M00_AXI_AWLOCK}),
        .s_axi_awprot({axi_register_slice_0_M_AXI_AWPROT,fill_ram_0_M_AXI_AWPROT,axi_interconnect_0_M00_AXI_AWPROT}),
        .s_axi_awqos({axi_register_slice_0_M_AXI_AWQOS,fill_ram_0_M_AXI_AWQOS,axi_interconnect_0_M00_AXI_AWQOS}),
        .s_axi_awready({axi_register_slice_0_M_AXI_AWREADY,fill_ram_0_M_AXI_AWREADY,axi_interconnect_0_M00_AXI_AWREADY}),
        .s_axi_awsize({axi_register_slice_0_M_AXI_AWSIZE,fill_ram_0_M_AXI_AWSIZE,axi_interconnect_0_M00_AXI_AWSIZE}),
        .s_axi_awvalid({axi_register_slice_0_M_AXI_AWVALID,fill_ram_0_M_AXI_AWVALID,axi_interconnect_0_M00_AXI_AWVALID}),
        .s_axi_bid({axi_register_slice_0_M_AXI_BID,NLW_axi_crossbar_s_axi_bid_UNCONNECTED[11:6],axi_interconnect_0_M00_AXI_BID}),
        .s_axi_bready({axi_register_slice_0_M_AXI_BREADY,fill_ram_0_M_AXI_BREADY,axi_interconnect_0_M00_AXI_BREADY}),
        .s_axi_bresp({axi_register_slice_0_M_AXI_BRESP,fill_ram_0_M_AXI_BRESP,axi_interconnect_0_M00_AXI_BRESP}),
        .s_axi_bvalid({axi_register_slice_0_M_AXI_BVALID,fill_ram_0_M_AXI_BVALID,axi_interconnect_0_M00_AXI_BVALID}),
        .s_axi_rdata({axi_register_slice_0_M_AXI_RDATA,fill_ram_0_M_AXI_RDATA,axi_interconnect_0_M00_AXI_RDATA}),
        .s_axi_rid({axi_register_slice_0_M_AXI_RID,NLW_axi_crossbar_s_axi_rid_UNCONNECTED[11:6],axi_interconnect_0_M00_AXI_RID}),
        .s_axi_rlast({axi_register_slice_0_M_AXI_RLAST,fill_ram_0_M_AXI_RLAST,axi_interconnect_0_M00_AXI_RLAST}),
        .s_axi_rready({axi_register_slice_0_M_AXI_RREADY,fill_ram_0_M_AXI_RREADY,axi_interconnect_0_M00_AXI_RREADY}),
        .s_axi_rresp({axi_register_slice_0_M_AXI_RRESP,fill_ram_0_M_AXI_RRESP,axi_interconnect_0_M00_AXI_RRESP}),
        .s_axi_rvalid({axi_register_slice_0_M_AXI_RVALID,fill_ram_0_M_AXI_RVALID,axi_interconnect_0_M00_AXI_RVALID}),
        .s_axi_wdata({axi_register_slice_0_M_AXI_WDATA,fill_ram_0_M_AXI_WDATA,axi_interconnect_0_M00_AXI_WDATA}),
        .s_axi_wlast({axi_register_slice_0_M_AXI_WLAST,fill_ram_0_M_AXI_WLAST,axi_interconnect_0_M00_AXI_WLAST}),
        .s_axi_wready({axi_register_slice_0_M_AXI_WREADY,fill_ram_0_M_AXI_WREADY,axi_interconnect_0_M00_AXI_WREADY}),
        .s_axi_wstrb({axi_register_slice_0_M_AXI_WSTRB,fill_ram_0_M_AXI_WSTRB,axi_interconnect_0_M00_AXI_WSTRB}),
        .s_axi_wvalid({axi_register_slice_0_M_AXI_WVALID,fill_ram_0_M_AXI_WVALID,axi_interconnect_0_M00_AXI_WVALID}));
  top_level_ddr4_1 ddr4
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(reset_inverter_Res),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(ddr4_dm_n[7:0]),
        .c0_ddr4_dq(ddr4_dq[63:0]),
        .c0_ddr4_dqs_c(ddr4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(ddr4_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_crossbar_M00_AXI_ARADDR[31:0]),
        .c0_ddr4_s_axi_arburst(axi_crossbar_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_crossbar_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_crossbar_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_crossbar_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_crossbar_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_crossbar_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_crossbar_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_crossbar_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_crossbar_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_crossbar_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_crossbar_M00_AXI_AWADDR[31:0]),
        .c0_ddr4_s_axi_awburst(axi_crossbar_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_crossbar_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_crossbar_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_crossbar_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_crossbar_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_crossbar_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_crossbar_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_crossbar_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_crossbar_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_crossbar_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_crossbar_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_crossbar_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_crossbar_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_crossbar_M00_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(axi_crossbar_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_crossbar_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_crossbar_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_crossbar_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_crossbar_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_crossbar_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_crossbar_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_crossbar_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_crossbar_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_crossbar_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_crossbar_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_0_c0_init_calib_complete),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(zero_dout));
  top_level_ddr4_reset_inverter_0 ddr4_reset_inverter
       (.Op1(ddr4_c0_ddr4_ui_clk_sync_rst),
        .Res(reset_inverter_Res));
  ethernet_imp_TJKSEE ethernet
       (.axis_rx_tdata(ethernet_axis_rx0_TDATA),
        .axis_rx_tkeep(ethernet_axis_rx0_TKEEP),
        .axis_rx_tlast(ethernet_axis_rx0_TLAST),
        .axis_rx_tvalid(ethernet_axis_rx0_TVALID),
        .axis_tx_tdata(Conn3_TDATA),
        .axis_tx_tkeep(Conn3_TKEEP),
        .axis_tx_tlast(Conn3_TLAST),
        .axis_tx_tready(Conn3_TREADY),
        .axis_tx_tvalid(Conn3_TVALID),
        .cmac_clock(clk_1),
        .gt_ref_clk_clk_n(Conn1_CLK_N),
        .gt_ref_clk_clk_p(Conn1_CLK_P),
        .gt_serial_port_grx_n(Conn2_GRX_N),
        .gt_serial_port_grx_p(Conn2_GRX_P),
        .gt_serial_port_gtx_n(Conn2_GTX_N),
        .gt_serial_port_gtx_p(Conn2_GTX_P),
        .init_clk(init_clk_1),
        .rx_aligned(ethernet_stat_rx_aligned));
  top_level_fill_ram_1 fill_ram
       (.M_AXI_ARADDR(fill_ram_0_M_AXI_ARADDR),
        .M_AXI_ARBURST(fill_ram_0_M_AXI_ARBURST),
        .M_AXI_ARCACHE(fill_ram_0_M_AXI_ARCACHE),
        .M_AXI_ARID(fill_ram_0_M_AXI_ARID),
        .M_AXI_ARLEN(fill_ram_0_M_AXI_ARLEN),
        .M_AXI_ARLOCK(fill_ram_0_M_AXI_ARLOCK),
        .M_AXI_ARPROT(fill_ram_0_M_AXI_ARPROT),
        .M_AXI_ARQOS(fill_ram_0_M_AXI_ARQOS),
        .M_AXI_ARREADY(fill_ram_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(fill_ram_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(fill_ram_0_M_AXI_AWADDR),
        .M_AXI_AWBURST(fill_ram_0_M_AXI_AWBURST),
        .M_AXI_AWCACHE(fill_ram_0_M_AXI_AWCACHE),
        .M_AXI_AWID(fill_ram_0_M_AXI_AWID),
        .M_AXI_AWLEN(fill_ram_0_M_AXI_AWLEN),
        .M_AXI_AWLOCK(fill_ram_0_M_AXI_AWLOCK),
        .M_AXI_AWPROT(fill_ram_0_M_AXI_AWPROT),
        .M_AXI_AWQOS(fill_ram_0_M_AXI_AWQOS),
        .M_AXI_AWREADY(fill_ram_0_M_AXI_AWREADY),
        .M_AXI_AWSIZE(fill_ram_0_M_AXI_AWSIZE),
        .M_AXI_AWVALID(fill_ram_0_M_AXI_AWVALID),
        .M_AXI_BREADY(fill_ram_0_M_AXI_BREADY),
        .M_AXI_BRESP(fill_ram_0_M_AXI_BRESP),
        .M_AXI_BVALID(fill_ram_0_M_AXI_BVALID),
        .M_AXI_RDATA(fill_ram_0_M_AXI_RDATA),
        .M_AXI_RLAST(fill_ram_0_M_AXI_RLAST),
        .M_AXI_RREADY(fill_ram_0_M_AXI_RREADY),
        .M_AXI_RRESP(fill_ram_0_M_AXI_RRESP),
        .M_AXI_RVALID(fill_ram_0_M_AXI_RVALID),
        .M_AXI_WDATA(fill_ram_0_M_AXI_WDATA),
        .M_AXI_WLAST(fill_ram_0_M_AXI_WLAST),
        .M_AXI_WREADY(fill_ram_0_M_AXI_WREADY),
        .M_AXI_WSTRB(fill_ram_0_M_AXI_WSTRB),
        .M_AXI_WVALID(fill_ram_0_M_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .idle(fill_ram_idle),
        .reset(ddr4_c0_ddr4_ui_clk_sync_rst),
        .start_async(sys_sync_start_1));
  top_level_packet_gate_1 packet_gate
       (.AXIS_IN_TDATA(ethernet_axis_rx0_TDATA),
        .AXIS_IN_TKEEP(ethernet_axis_rx0_TKEEP),
        .AXIS_IN_TLAST(ethernet_axis_rx0_TLAST),
        .AXIS_IN_TVALID(ethernet_axis_rx0_TVALID),
        .AXIS_OUT_TDATA(packet_gate_output_TDATA),
        .AXIS_OUT_TKEEP(packet_gate_output_TKEEP),
        .AXIS_OUT_TLAST(packet_gate_output_TLAST),
        .AXIS_OUT_TREADY(packet_gate_output_TREADY),
        .AXIS_OUT_TVALID(packet_gate_output_TVALID),
        .clk(clk_1),
        .enable_async(enable_async_1),
        .sys_reset(zero_dout));
  top_level_stream_to_ram_1 stream_to_ram
       (.AXIS_IN_TDATA(add_header_AXIS_OUT_TDATA),
        .AXIS_IN_TREADY(add_header_AXIS_OUT_TREADY),
        .AXIS_IN_TVALID(add_header_AXIS_OUT_TVALID),
        .M_AXI_ARADDR(stream_to_ram_M_AXI_ARADDR),
        .M_AXI_ARBURST(stream_to_ram_M_AXI_ARBURST),
        .M_AXI_ARCACHE(stream_to_ram_M_AXI_ARCACHE),
        .M_AXI_ARID(stream_to_ram_M_AXI_ARID),
        .M_AXI_ARLEN(stream_to_ram_M_AXI_ARLEN),
        .M_AXI_ARLOCK(stream_to_ram_M_AXI_ARLOCK),
        .M_AXI_ARPROT(stream_to_ram_M_AXI_ARPROT),
        .M_AXI_ARQOS(stream_to_ram_M_AXI_ARQOS),
        .M_AXI_ARREADY(stream_to_ram_M_AXI_ARREADY),
        .M_AXI_ARVALID(stream_to_ram_M_AXI_ARVALID),
        .M_AXI_AWADDR(stream_to_ram_M_AXI_AWADDR),
        .M_AXI_AWBURST(stream_to_ram_M_AXI_AWBURST),
        .M_AXI_AWCACHE(stream_to_ram_M_AXI_AWCACHE),
        .M_AXI_AWID(stream_to_ram_M_AXI_AWID),
        .M_AXI_AWLEN(stream_to_ram_M_AXI_AWLEN),
        .M_AXI_AWLOCK(stream_to_ram_M_AXI_AWLOCK),
        .M_AXI_AWPROT(stream_to_ram_M_AXI_AWPROT),
        .M_AXI_AWQOS(stream_to_ram_M_AXI_AWQOS),
        .M_AXI_AWREADY(stream_to_ram_M_AXI_AWREADY),
        .M_AXI_AWSIZE(stream_to_ram_M_AXI_AWSIZE),
        .M_AXI_AWVALID(stream_to_ram_M_AXI_AWVALID),
        .M_AXI_BREADY(stream_to_ram_M_AXI_BREADY),
        .M_AXI_BRESP(stream_to_ram_M_AXI_BRESP),
        .M_AXI_BVALID(stream_to_ram_M_AXI_BVALID),
        .M_AXI_RDATA(stream_to_ram_M_AXI_RDATA),
        .M_AXI_RLAST(stream_to_ram_M_AXI_RLAST),
        .M_AXI_RREADY(stream_to_ram_M_AXI_RREADY),
        .M_AXI_RRESP(stream_to_ram_M_AXI_RRESP),
        .M_AXI_RVALID(stream_to_ram_M_AXI_RVALID),
        .M_AXI_WDATA(stream_to_ram_M_AXI_WDATA),
        .M_AXI_WLAST(stream_to_ram_M_AXI_WLAST),
        .M_AXI_WREADY(stream_to_ram_M_AXI_WREADY),
        .M_AXI_WSTRB(stream_to_ram_M_AXI_WSTRB),
        .M_AXI_WVALID(stream_to_ram_M_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .sys_reset(zero_dout));
  top_level_axi_register_slice_1 to_xbar_slice
       (.aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(reset_inverter_Res),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_0_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_0_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_0_M_AXI_BID[15:12]),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_0_M_AXI_RID[15:12]),
        .m_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(stream_to_ram_M_AXI_ARADDR),
        .s_axi_arburst(stream_to_ram_M_AXI_ARBURST),
        .s_axi_arcache(stream_to_ram_M_AXI_ARCACHE),
        .s_axi_arid(stream_to_ram_M_AXI_ARID),
        .s_axi_arlen(stream_to_ram_M_AXI_ARLEN),
        .s_axi_arlock(stream_to_ram_M_AXI_ARLOCK),
        .s_axi_arprot(stream_to_ram_M_AXI_ARPROT),
        .s_axi_arqos(stream_to_ram_M_AXI_ARQOS),
        .s_axi_arready(stream_to_ram_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(stream_to_ram_M_AXI_ARVALID),
        .s_axi_awaddr(stream_to_ram_M_AXI_AWADDR),
        .s_axi_awburst(stream_to_ram_M_AXI_AWBURST),
        .s_axi_awcache(stream_to_ram_M_AXI_AWCACHE),
        .s_axi_awid(stream_to_ram_M_AXI_AWID),
        .s_axi_awlen(stream_to_ram_M_AXI_AWLEN),
        .s_axi_awlock(stream_to_ram_M_AXI_AWLOCK),
        .s_axi_awprot(stream_to_ram_M_AXI_AWPROT),
        .s_axi_awqos(stream_to_ram_M_AXI_AWQOS),
        .s_axi_awready(stream_to_ram_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(stream_to_ram_M_AXI_AWSIZE),
        .s_axi_awvalid(stream_to_ram_M_AXI_AWVALID),
        .s_axi_bready(stream_to_ram_M_AXI_BREADY),
        .s_axi_bresp(stream_to_ram_M_AXI_BRESP),
        .s_axi_bvalid(stream_to_ram_M_AXI_BVALID),
        .s_axi_rdata(stream_to_ram_M_AXI_RDATA),
        .s_axi_rlast(stream_to_ram_M_AXI_RLAST),
        .s_axi_rready(stream_to_ram_M_AXI_RREADY),
        .s_axi_rresp(stream_to_ram_M_AXI_RRESP),
        .s_axi_rvalid(stream_to_ram_M_AXI_RVALID),
        .s_axi_wdata(stream_to_ram_M_AXI_WDATA),
        .s_axi_wlast(stream_to_ram_M_AXI_WLAST),
        .s_axi_wready(stream_to_ram_M_AXI_WREADY),
        .s_axi_wstrb(stream_to_ram_M_AXI_WSTRB),
        .s_axi_wvalid(stream_to_ram_M_AXI_WVALID));
endmodule

module data_gen0_imp_SJODJ5
   (AXIS_OUT_tdata,
    AXIS_OUT_tkeep,
    AXIS_OUT_tlast,
    AXIS_OUT_tready,
    AXIS_OUT_tvalid,
    clk);
  output [511:0]AXIS_OUT_tdata;
  output [63:0]AXIS_OUT_tkeep;
  output AXIS_OUT_tlast;
  input AXIS_OUT_tready;
  output AXIS_OUT_tvalid;
  input clk;

  wire [511:0]data_gen_0_AXIS_OUT_TDATA;
  wire [63:0]data_gen_0_AXIS_OUT_TKEEP;
  wire data_gen_0_AXIS_OUT_TLAST;
  wire data_gen_0_AXIS_OUT_TREADY;
  wire data_gen_0_AXIS_OUT_TVALID;
  wire ethernet_cmac_clock0;
  wire [0:0]xlconstant_0_dout;

  assign AXIS_OUT_tdata[511:0] = data_gen_0_AXIS_OUT_TDATA;
  assign AXIS_OUT_tkeep[63:0] = data_gen_0_AXIS_OUT_TKEEP;
  assign AXIS_OUT_tlast = data_gen_0_AXIS_OUT_TLAST;
  assign AXIS_OUT_tvalid = data_gen_0_AXIS_OUT_TVALID;
  assign data_gen_0_AXIS_OUT_TREADY = AXIS_OUT_tready;
  assign ethernet_cmac_clock0 = clk;
  top_level_data_gen_0_0 data_gen
       (.AXIS_OUT_TDATA(data_gen_0_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(data_gen_0_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(data_gen_0_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(data_gen_0_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(data_gen_0_AXIS_OUT_TVALID),
        .clk(ethernet_cmac_clock0),
        .resetn(xlconstant_0_dout));
  top_level_xlconstant_0_1 one
       (.dout(xlconstant_0_dout));
endmodule

module data_gen1_imp_121PSQN
   (AXIS_OUT_tdata,
    AXIS_OUT_tkeep,
    AXIS_OUT_tlast,
    AXIS_OUT_tready,
    AXIS_OUT_tvalid,
    clk);
  output [511:0]AXIS_OUT_tdata;
  output [63:0]AXIS_OUT_tkeep;
  output AXIS_OUT_tlast;
  input AXIS_OUT_tready;
  output AXIS_OUT_tvalid;
  input clk;

  wire [511:0]data_gen_0_AXIS_OUT_TDATA;
  wire [63:0]data_gen_0_AXIS_OUT_TKEEP;
  wire data_gen_0_AXIS_OUT_TLAST;
  wire data_gen_0_AXIS_OUT_TREADY;
  wire data_gen_0_AXIS_OUT_TVALID;
  wire ethernet_cmac_clock0;
  wire [0:0]xlconstant_0_dout;

  assign AXIS_OUT_tdata[511:0] = data_gen_0_AXIS_OUT_TDATA;
  assign AXIS_OUT_tkeep[63:0] = data_gen_0_AXIS_OUT_TKEEP;
  assign AXIS_OUT_tlast = data_gen_0_AXIS_OUT_TLAST;
  assign AXIS_OUT_tvalid = data_gen_0_AXIS_OUT_TVALID;
  assign data_gen_0_AXIS_OUT_TREADY = AXIS_OUT_tready;
  assign ethernet_cmac_clock0 = clk;
  top_level_data_gen_1 data_gen
       (.AXIS_OUT_TDATA(data_gen_0_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(data_gen_0_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(data_gen_0_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(data_gen_0_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(data_gen_0_AXIS_OUT_TVALID),
        .clk(ethernet_cmac_clock0),
        .resetn(xlconstant_0_dout));
  top_level_one_0 one
       (.dout(xlconstant_0_dout));
endmodule

module ethernet_imp_1GLTXGE
   (axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    cmac_clock,
    gt_ref_clk_clk_n,
    gt_ref_clk_clk_p,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    init_clk,
    rx_aligned);
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  output cmac_clock;
  input gt_ref_clk_clk_n;
  input gt_ref_clk_clk_p;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  input init_clk;
  output rx_aligned;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [3:0]Conn2_GRX_N;
  wire [3:0]Conn2_GRX_P;
  wire [3:0]Conn2_GTX_N;
  wire [3:0]Conn2_GTX_P;
  wire [511:0]axis_tx_1_TDATA;
  wire [63:0]axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TVALID;
  wire cmac_control_0_ctl_rx_ctl_enable;
  wire cmac_control_0_ctl_tx_ctl_enable;
  wire cmac_control_0_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_0_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_0_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_0_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_0_rs_fec_ctl_tx_rsfec_enable;
  wire [511:0]cmac_usplus_0_axis_rx_TDATA;
  wire [63:0]cmac_usplus_0_axis_rx_TKEEP;
  wire cmac_usplus_0_axis_rx_TLAST;
  wire cmac_usplus_0_axis_rx_TVALID;
  wire cmac_usplus_0_gt_txusrclk2;
  wire cmac_usplus_0_stat_rx_aligned;
  wire init_clk_0_1;

  assign Conn1_CLK_N = gt_ref_clk_clk_n;
  assign Conn1_CLK_P = gt_ref_clk_clk_p;
  assign Conn2_GRX_N = gt_serial_port_grx_n[3:0];
  assign Conn2_GRX_P = gt_serial_port_grx_p[3:0];
  assign axis_rx_tdata[511:0] = cmac_usplus_0_axis_rx_TDATA;
  assign axis_rx_tkeep[63:0] = cmac_usplus_0_axis_rx_TKEEP;
  assign axis_rx_tlast = cmac_usplus_0_axis_rx_TLAST;
  assign axis_rx_tvalid = cmac_usplus_0_axis_rx_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata[511:0];
  assign axis_tx_1_TKEEP = axis_tx_tkeep[63:0];
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign cmac_clock = cmac_usplus_0_gt_txusrclk2;
  assign gt_serial_port_gtx_n[3:0] = Conn2_GTX_N;
  assign gt_serial_port_gtx_p[3:0] = Conn2_GTX_P;
  assign init_clk_0_1 = init_clk;
  assign rx_aligned = cmac_usplus_0_stat_rx_aligned;
  top_level_cmac_control_0_0 cmac_control
       (.ctl_rx_enable(cmac_control_0_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_aligned));
  top_level_cmac_usplus_0_0 cmac_usplus
       (.core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_0_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(Conn1_CLK_N),
        .gt_ref_clk_p(Conn1_CLK_P),
        .gt_rxn_in(Conn2_GRX_N),
        .gt_rxp_in(Conn2_GRX_P),
        .gt_txn_out(Conn2_GTX_N),
        .gt_txp_out(Conn2_GTX_P),
        .gt_txusrclk2(cmac_usplus_0_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(1'b0),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_0_1),
        .rx_axis_tdata(cmac_usplus_0_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_usplus_0_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_usplus_0_axis_rx_TLAST),
        .rx_axis_tvalid(cmac_usplus_0_axis_rx_TVALID),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_aligned),
        .sys_reset(1'b0),
        .tx_axis_tdata(axis_tx_1_TDATA),
        .tx_axis_tkeep(axis_tx_1_TKEEP),
        .tx_axis_tlast(axis_tx_1_TLAST),
        .tx_axis_tready(axis_tx_1_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_tx_1_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module ethernet_imp_TJKSEE
   (axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    cmac_clock,
    gt_ref_clk_clk_n,
    gt_ref_clk_clk_p,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    init_clk,
    rx_aligned);
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  output cmac_clock;
  input gt_ref_clk_clk_n;
  input gt_ref_clk_clk_p;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  input init_clk;
  output rx_aligned;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [3:0]Conn2_GRX_N;
  wire [3:0]Conn2_GRX_P;
  wire [3:0]Conn2_GTX_N;
  wire [3:0]Conn2_GTX_P;
  wire [511:0]axis_tx_1_TDATA;
  wire [63:0]axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TVALID;
  wire cmac_control_0_ctl_rx_ctl_enable;
  wire cmac_control_0_ctl_tx_ctl_enable;
  wire cmac_control_0_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_0_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_0_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_0_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_0_rs_fec_ctl_tx_rsfec_enable;
  wire [511:0]cmac_usplus_0_axis_rx_TDATA;
  wire [63:0]cmac_usplus_0_axis_rx_TKEEP;
  wire cmac_usplus_0_axis_rx_TLAST;
  wire cmac_usplus_0_axis_rx_TVALID;
  wire cmac_usplus_0_gt_txusrclk2;
  wire cmac_usplus_0_stat_rx_aligned;
  wire init_clk_0_1;

  assign Conn1_CLK_N = gt_ref_clk_clk_n;
  assign Conn1_CLK_P = gt_ref_clk_clk_p;
  assign Conn2_GRX_N = gt_serial_port_grx_n[3:0];
  assign Conn2_GRX_P = gt_serial_port_grx_p[3:0];
  assign axis_rx_tdata[511:0] = cmac_usplus_0_axis_rx_TDATA;
  assign axis_rx_tkeep[63:0] = cmac_usplus_0_axis_rx_TKEEP;
  assign axis_rx_tlast = cmac_usplus_0_axis_rx_TLAST;
  assign axis_rx_tvalid = cmac_usplus_0_axis_rx_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata[511:0];
  assign axis_tx_1_TKEEP = axis_tx_tkeep[63:0];
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign cmac_clock = cmac_usplus_0_gt_txusrclk2;
  assign gt_serial_port_gtx_n[3:0] = Conn2_GTX_N;
  assign gt_serial_port_gtx_p[3:0] = Conn2_GTX_P;
  assign init_clk_0_1 = init_clk;
  assign rx_aligned = cmac_usplus_0_stat_rx_aligned;
  top_level_cmac_control_0_1 cmac_control
       (.ctl_rx_enable(cmac_control_0_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_aligned));
  top_level_cmac_usplus_0_1 cmac_usplus
       (.core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_0_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(Conn1_CLK_N),
        .gt_ref_clk_p(Conn1_CLK_P),
        .gt_rxn_in(Conn2_GRX_N),
        .gt_rxp_in(Conn2_GRX_P),
        .gt_txn_out(Conn2_GTX_N),
        .gt_txp_out(Conn2_GTX_P),
        .gt_txusrclk2(cmac_usplus_0_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(1'b0),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_0_1),
        .rx_axis_tdata(cmac_usplus_0_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_usplus_0_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_usplus_0_axis_rx_TLAST),
        .rx_axis_tvalid(cmac_usplus_0_axis_rx_TVALID),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_aligned),
        .sys_reset(1'b0),
        .tx_axis_tdata(axis_tx_1_TDATA),
        .tx_axis_tkeep(axis_tx_1_TKEEP),
        .tx_axis_tlast(axis_tx_1_TLAST),
        .tx_axis_tready(axis_tx_1_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_tx_1_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module m00_couplers_imp_13D2W4P
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [3:0]auto_cc_to_m00_couplers_ARID;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire [0:0]auto_cc_to_m00_couplers_ARREADY;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [63:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [3:0]auto_cc_to_m00_couplers_AWID;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire [0:0]auto_cc_to_m00_couplers_AWREADY;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire [5:0]auto_cc_to_m00_couplers_BID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire [0:0]auto_cc_to_m00_couplers_BVALID;
  wire [511:0]auto_cc_to_m00_couplers_RDATA;
  wire [5:0]auto_cc_to_m00_couplers_RID;
  wire [0:0]auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire [0:0]auto_cc_to_m00_couplers_RVALID;
  wire [511:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire [0:0]auto_cc_to_m00_couplers_WREADY;
  wire [63:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [3:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [63:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [3:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [3:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [511:0]m00_couplers_to_auto_cc_RDATA;
  wire [3:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [511:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [63:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = auto_cc_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = auto_cc_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[3:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[3:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign auto_cc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[3:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[3:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  top_level_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m00_couplers_BID[3:0]),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m00_couplers_RID[3:0]),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_P1CQY9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m01_couplers_ARADDR;
  wire [2:0]auto_pc_to_m01_couplers_ARPROT;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [31:0]auto_pc_to_m01_couplers_AWADDR;
  wire [2:0]auto_pc_to_m01_couplers_AWPROT;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [63:0]m01_couplers_to_auto_ds_ARADDR;
  wire [1:0]m01_couplers_to_auto_ds_ARBURST;
  wire [3:0]m01_couplers_to_auto_ds_ARCACHE;
  wire [3:0]m01_couplers_to_auto_ds_ARID;
  wire [7:0]m01_couplers_to_auto_ds_ARLEN;
  wire [0:0]m01_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m01_couplers_to_auto_ds_ARPROT;
  wire [3:0]m01_couplers_to_auto_ds_ARQOS;
  wire m01_couplers_to_auto_ds_ARREADY;
  wire [3:0]m01_couplers_to_auto_ds_ARREGION;
  wire [2:0]m01_couplers_to_auto_ds_ARSIZE;
  wire m01_couplers_to_auto_ds_ARVALID;
  wire [63:0]m01_couplers_to_auto_ds_AWADDR;
  wire [1:0]m01_couplers_to_auto_ds_AWBURST;
  wire [3:0]m01_couplers_to_auto_ds_AWCACHE;
  wire [3:0]m01_couplers_to_auto_ds_AWID;
  wire [7:0]m01_couplers_to_auto_ds_AWLEN;
  wire [0:0]m01_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m01_couplers_to_auto_ds_AWPROT;
  wire [3:0]m01_couplers_to_auto_ds_AWQOS;
  wire m01_couplers_to_auto_ds_AWREADY;
  wire [3:0]m01_couplers_to_auto_ds_AWREGION;
  wire [2:0]m01_couplers_to_auto_ds_AWSIZE;
  wire m01_couplers_to_auto_ds_AWVALID;
  wire [3:0]m01_couplers_to_auto_ds_BID;
  wire m01_couplers_to_auto_ds_BREADY;
  wire [1:0]m01_couplers_to_auto_ds_BRESP;
  wire m01_couplers_to_auto_ds_BVALID;
  wire [511:0]m01_couplers_to_auto_ds_RDATA;
  wire [3:0]m01_couplers_to_auto_ds_RID;
  wire m01_couplers_to_auto_ds_RLAST;
  wire m01_couplers_to_auto_ds_RREADY;
  wire [1:0]m01_couplers_to_auto_ds_RRESP;
  wire m01_couplers_to_auto_ds_RVALID;
  wire [511:0]m01_couplers_to_auto_ds_WDATA;
  wire m01_couplers_to_auto_ds_WLAST;
  wire m01_couplers_to_auto_ds_WREADY;
  wire [63:0]m01_couplers_to_auto_ds_WSTRB;
  wire m01_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[3:0] = m01_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[511:0] = m01_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[3:0] = m01_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_ds_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_ds_ARID = S_AXI_arid[3:0];
  assign m01_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_ds_AWID = S_AXI_awid[3:0];
  assign m01_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_ds_WDATA = S_AXI_wdata[511:0];
  assign m01_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[63:0];
  assign m01_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  top_level_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_ds_ARADDR[31:0]),
        .s_axi_arburst(m01_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m01_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m01_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_ds_AWADDR[31:0]),
        .s_axi_awburst(m01_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m01_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_ds_BID),
        .s_axi_bready(m01_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m01_couplers_to_auto_ds_RID),
        .s_axi_rlast(m01_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m01_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m01_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_ds_WVALID));
  top_level_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_1X7C4WO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_m02_couplers_ARADDR;
  wire [1:0]auto_cc_to_m02_couplers_ARBURST;
  wire [3:0]auto_cc_to_m02_couplers_ARCACHE;
  wire [3:0]auto_cc_to_m02_couplers_ARID;
  wire [7:0]auto_cc_to_m02_couplers_ARLEN;
  wire [0:0]auto_cc_to_m02_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m02_couplers_ARPROT;
  wire [3:0]auto_cc_to_m02_couplers_ARQOS;
  wire [0:0]auto_cc_to_m02_couplers_ARREADY;
  wire [2:0]auto_cc_to_m02_couplers_ARSIZE;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [63:0]auto_cc_to_m02_couplers_AWADDR;
  wire [1:0]auto_cc_to_m02_couplers_AWBURST;
  wire [3:0]auto_cc_to_m02_couplers_AWCACHE;
  wire [3:0]auto_cc_to_m02_couplers_AWID;
  wire [7:0]auto_cc_to_m02_couplers_AWLEN;
  wire [0:0]auto_cc_to_m02_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m02_couplers_AWPROT;
  wire [3:0]auto_cc_to_m02_couplers_AWQOS;
  wire [0:0]auto_cc_to_m02_couplers_AWREADY;
  wire [2:0]auto_cc_to_m02_couplers_AWSIZE;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire [5:0]auto_cc_to_m02_couplers_BID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire [0:0]auto_cc_to_m02_couplers_BVALID;
  wire [511:0]auto_cc_to_m02_couplers_RDATA;
  wire [5:0]auto_cc_to_m02_couplers_RID;
  wire [0:0]auto_cc_to_m02_couplers_RLAST;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire [0:0]auto_cc_to_m02_couplers_RVALID;
  wire [511:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WLAST;
  wire [0:0]auto_cc_to_m02_couplers_WREADY;
  wire [63:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [63:0]m02_couplers_to_auto_cc_ARADDR;
  wire [1:0]m02_couplers_to_auto_cc_ARBURST;
  wire [3:0]m02_couplers_to_auto_cc_ARCACHE;
  wire [3:0]m02_couplers_to_auto_cc_ARID;
  wire [7:0]m02_couplers_to_auto_cc_ARLEN;
  wire [0:0]m02_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire [3:0]m02_couplers_to_auto_cc_ARQOS;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire [3:0]m02_couplers_to_auto_cc_ARREGION;
  wire [2:0]m02_couplers_to_auto_cc_ARSIZE;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [63:0]m02_couplers_to_auto_cc_AWADDR;
  wire [1:0]m02_couplers_to_auto_cc_AWBURST;
  wire [3:0]m02_couplers_to_auto_cc_AWCACHE;
  wire [3:0]m02_couplers_to_auto_cc_AWID;
  wire [7:0]m02_couplers_to_auto_cc_AWLEN;
  wire [0:0]m02_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire [3:0]m02_couplers_to_auto_cc_AWQOS;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire [3:0]m02_couplers_to_auto_cc_AWREGION;
  wire [2:0]m02_couplers_to_auto_cc_AWSIZE;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire [3:0]m02_couplers_to_auto_cc_BID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [511:0]m02_couplers_to_auto_cc_RDATA;
  wire [3:0]m02_couplers_to_auto_cc_RID;
  wire m02_couplers_to_auto_cc_RLAST;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [511:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WLAST;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [63:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = auto_cc_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m02_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = auto_cc_to_m02_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wlast[0] = auto_cc_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[3:0] = m02_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[3:0] = m02_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m02_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign auto_cc_to_m02_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m02_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_m02_couplers_RLAST = M_AXI_rlast[0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m02_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_cc_ARID = S_AXI_arid[3:0];
  assign m02_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m02_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_cc_AWID = S_AXI_awid[3:0];
  assign m02_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m02_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  top_level_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m02_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m02_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m02_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m02_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m02_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m02_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m02_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m02_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m02_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m02_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m02_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m02_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m02_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m02_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m02_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m02_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m02_couplers_BID[3:0]),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m02_couplers_RID[3:0]),
        .m_axi_rlast(auto_cc_to_m02_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m02_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(m02_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m02_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m02_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(m02_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m02_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m02_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m02_couplers_to_auto_cc_BID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m02_couplers_to_auto_cc_RID),
        .s_axi_rlast(m02_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_CWTEGW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [63:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [63:0]auto_pc_to_m03_couplers_ARADDR;
  wire [2:0]auto_pc_to_m03_couplers_ARPROT;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [63:0]auto_pc_to_m03_couplers_AWADDR;
  wire [2:0]auto_pc_to_m03_couplers_AWPROT;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [63:0]m03_couplers_to_auto_ds_ARADDR;
  wire [1:0]m03_couplers_to_auto_ds_ARBURST;
  wire [3:0]m03_couplers_to_auto_ds_ARCACHE;
  wire [3:0]m03_couplers_to_auto_ds_ARID;
  wire [7:0]m03_couplers_to_auto_ds_ARLEN;
  wire [0:0]m03_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m03_couplers_to_auto_ds_ARPROT;
  wire [3:0]m03_couplers_to_auto_ds_ARQOS;
  wire m03_couplers_to_auto_ds_ARREADY;
  wire [3:0]m03_couplers_to_auto_ds_ARREGION;
  wire [2:0]m03_couplers_to_auto_ds_ARSIZE;
  wire m03_couplers_to_auto_ds_ARVALID;
  wire [63:0]m03_couplers_to_auto_ds_AWADDR;
  wire [1:0]m03_couplers_to_auto_ds_AWBURST;
  wire [3:0]m03_couplers_to_auto_ds_AWCACHE;
  wire [3:0]m03_couplers_to_auto_ds_AWID;
  wire [7:0]m03_couplers_to_auto_ds_AWLEN;
  wire [0:0]m03_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m03_couplers_to_auto_ds_AWPROT;
  wire [3:0]m03_couplers_to_auto_ds_AWQOS;
  wire m03_couplers_to_auto_ds_AWREADY;
  wire [3:0]m03_couplers_to_auto_ds_AWREGION;
  wire [2:0]m03_couplers_to_auto_ds_AWSIZE;
  wire m03_couplers_to_auto_ds_AWVALID;
  wire [3:0]m03_couplers_to_auto_ds_BID;
  wire m03_couplers_to_auto_ds_BREADY;
  wire [1:0]m03_couplers_to_auto_ds_BRESP;
  wire m03_couplers_to_auto_ds_BVALID;
  wire [511:0]m03_couplers_to_auto_ds_RDATA;
  wire [3:0]m03_couplers_to_auto_ds_RID;
  wire m03_couplers_to_auto_ds_RLAST;
  wire m03_couplers_to_auto_ds_RREADY;
  wire [1:0]m03_couplers_to_auto_ds_RRESP;
  wire m03_couplers_to_auto_ds_RVALID;
  wire [511:0]m03_couplers_to_auto_ds_WDATA;
  wire m03_couplers_to_auto_ds_WLAST;
  wire m03_couplers_to_auto_ds_WREADY;
  wire [63:0]m03_couplers_to_auto_ds_WSTRB;
  wire m03_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[63:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[3:0] = m03_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[511:0] = m03_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[3:0] = m03_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_ds_ARADDR = S_AXI_araddr[63:0];
  assign m03_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_ds_ARID = S_AXI_arid[3:0];
  assign m03_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[63:0];
  assign m03_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_ds_AWID = S_AXI_awid[3:0];
  assign m03_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_ds_WDATA = S_AXI_wdata[511:0];
  assign m03_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[63:0];
  assign m03_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  top_level_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m03_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m03_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m03_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_ds_BID),
        .s_axi_bready(m03_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m03_couplers_to_auto_ds_RID),
        .s_axi_rlast(m03_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m03_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m03_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_ds_WVALID));
  top_level_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module pcie_bridge_imp_1AINXYK
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output [63:0]M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output [3:0]M_AXI_B_arid;
  output [7:0]M_AXI_B_arlen;
  output [0:0]M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output M_AXI_B_arvalid;
  output [63:0]M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output [3:0]M_AXI_B_awid;
  output [7:0]M_AXI_B_awlen;
  output [0:0]M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output M_AXI_B_awvalid;
  input [3:0]M_AXI_B_bid;
  output M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input M_AXI_B_bvalid;
  input [511:0]M_AXI_B_rdata;
  input [3:0]M_AXI_B_rid;
  input M_AXI_B_rlast;
  output M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input M_AXI_B_rvalid;
  output [511:0]M_AXI_B_wdata;
  output M_AXI_B_wlast;
  input M_AXI_B_wready;
  output [63:0]M_AXI_B_wstrb;
  output M_AXI_B_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [15:0]pcie_mgt_0_rxn;
  input [15:0]pcie_mgt_0_rxp;
  output [15:0]pcie_mgt_0_txn;
  output [15:0]pcie_mgt_0_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [63:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [63:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [3:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [511:0]Conn1_RDATA;
  wire [3:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]axi4_lite_plug_0_AXI_ARADDR;
  wire [2:0]axi4_lite_plug_0_AXI_ARPROT;
  wire axi4_lite_plug_0_AXI_ARREADY;
  wire axi4_lite_plug_0_AXI_ARVALID;
  wire [31:0]axi4_lite_plug_0_AXI_AWADDR;
  wire [2:0]axi4_lite_plug_0_AXI_AWPROT;
  wire axi4_lite_plug_0_AXI_AWREADY;
  wire axi4_lite_plug_0_AXI_AWVALID;
  wire axi4_lite_plug_0_AXI_BREADY;
  wire [1:0]axi4_lite_plug_0_AXI_BRESP;
  wire axi4_lite_plug_0_AXI_BVALID;
  wire [31:0]axi4_lite_plug_0_AXI_RDATA;
  wire axi4_lite_plug_0_AXI_RREADY;
  wire [1:0]axi4_lite_plug_0_AXI_RRESP;
  wire axi4_lite_plug_0_AXI_RVALID;
  wire [31:0]axi4_lite_plug_0_AXI_WDATA;
  wire axi4_lite_plug_0_AXI_WREADY;
  wire [3:0]axi4_lite_plug_0_AXI_WSTRB;
  wire axi4_lite_plug_0_AXI_WVALID;
  wire pcie_bridge_axi_aclk;
  wire pcie_bridge_axi_aresetn;
  wire [15:0]pcie_bridge_pcie_mgt_rxn;
  wire [15:0]pcie_bridge_pcie_mgt_rxp;
  wire [15:0]pcie_bridge_pcie_mgt_txn;
  wire [15:0]pcie_bridge_pcie_mgt_txp;
  wire [0:0]util_ds_buf_0_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]xlconstant_0_dout;

  assign CLK_IN_D_0_1_CLK_N = pcie_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_refclk_clk_p[0];
  assign Conn1_ARREADY = M_AXI_B_arready;
  assign Conn1_AWREADY = M_AXI_B_awready;
  assign Conn1_BID = M_AXI_B_bid[3:0];
  assign Conn1_BRESP = M_AXI_B_bresp[1:0];
  assign Conn1_BVALID = M_AXI_B_bvalid;
  assign Conn1_RDATA = M_AXI_B_rdata[511:0];
  assign Conn1_RID = M_AXI_B_rid[3:0];
  assign Conn1_RLAST = M_AXI_B_rlast;
  assign Conn1_RRESP = M_AXI_B_rresp[1:0];
  assign Conn1_RVALID = M_AXI_B_rvalid;
  assign Conn1_WREADY = M_AXI_B_wready;
  assign M_AXI_B_araddr[63:0] = Conn1_ARADDR;
  assign M_AXI_B_arburst[1:0] = Conn1_ARBURST;
  assign M_AXI_B_arcache[3:0] = Conn1_ARCACHE;
  assign M_AXI_B_arid[3:0] = Conn1_ARID;
  assign M_AXI_B_arlen[7:0] = Conn1_ARLEN;
  assign M_AXI_B_arlock[0] = Conn1_ARLOCK;
  assign M_AXI_B_arprot[2:0] = Conn1_ARPROT;
  assign M_AXI_B_arsize[2:0] = Conn1_ARSIZE;
  assign M_AXI_B_arvalid = Conn1_ARVALID;
  assign M_AXI_B_awaddr[63:0] = Conn1_AWADDR;
  assign M_AXI_B_awburst[1:0] = Conn1_AWBURST;
  assign M_AXI_B_awcache[3:0] = Conn1_AWCACHE;
  assign M_AXI_B_awid[3:0] = Conn1_AWID;
  assign M_AXI_B_awlen[7:0] = Conn1_AWLEN;
  assign M_AXI_B_awlock[0] = Conn1_AWLOCK;
  assign M_AXI_B_awprot[2:0] = Conn1_AWPROT;
  assign M_AXI_B_awsize[2:0] = Conn1_AWSIZE;
  assign M_AXI_B_awvalid = Conn1_AWVALID;
  assign M_AXI_B_bready = Conn1_BREADY;
  assign M_AXI_B_rready = Conn1_RREADY;
  assign M_AXI_B_wdata[511:0] = Conn1_WDATA;
  assign M_AXI_B_wlast = Conn1_WLAST;
  assign M_AXI_B_wstrb[63:0] = Conn1_WSTRB;
  assign M_AXI_B_wvalid = Conn1_WVALID;
  assign axi_aclk = pcie_bridge_axi_aclk;
  assign axi_aresetn = pcie_bridge_axi_aresetn;
  assign pcie_bridge_pcie_mgt_rxn = pcie_mgt_0_rxn[15:0];
  assign pcie_bridge_pcie_mgt_rxp = pcie_mgt_0_rxp[15:0];
  assign pcie_mgt_0_txn[15:0] = pcie_bridge_pcie_mgt_txn;
  assign pcie_mgt_0_txp[15:0] = pcie_bridge_pcie_mgt_txp;
  top_level_axi4_lite_plug_0_0 axi4_lite_plug
       (.AXI_ARADDR(axi4_lite_plug_0_AXI_ARADDR),
        .AXI_ARPROT(axi4_lite_plug_0_AXI_ARPROT),
        .AXI_ARREADY(axi4_lite_plug_0_AXI_ARREADY),
        .AXI_ARVALID(axi4_lite_plug_0_AXI_ARVALID),
        .AXI_AWADDR(axi4_lite_plug_0_AXI_AWADDR),
        .AXI_AWPROT(axi4_lite_plug_0_AXI_AWPROT),
        .AXI_AWREADY(axi4_lite_plug_0_AXI_AWREADY),
        .AXI_AWVALID(axi4_lite_plug_0_AXI_AWVALID),
        .AXI_BREADY(axi4_lite_plug_0_AXI_BREADY),
        .AXI_BRESP(axi4_lite_plug_0_AXI_BRESP),
        .AXI_BVALID(axi4_lite_plug_0_AXI_BVALID),
        .AXI_RDATA(axi4_lite_plug_0_AXI_RDATA),
        .AXI_RREADY(axi4_lite_plug_0_AXI_RREADY),
        .AXI_RRESP(axi4_lite_plug_0_AXI_RRESP),
        .AXI_RVALID(axi4_lite_plug_0_AXI_RVALID),
        .AXI_WDATA(axi4_lite_plug_0_AXI_WDATA),
        .AXI_WREADY(axi4_lite_plug_0_AXI_WREADY),
        .AXI_WSTRB(axi4_lite_plug_0_AXI_WSTRB),
        .AXI_WVALID(axi4_lite_plug_0_AXI_WVALID),
        .clk(pcie_bridge_axi_aclk));
  top_level_xlconstant_0_0 one
       (.dout(xlconstant_0_dout));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(pcie_bridge_axi_aclk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axib_araddr(Conn1_ARADDR),
        .m_axib_arburst(Conn1_ARBURST),
        .m_axib_arcache(Conn1_ARCACHE),
        .m_axib_arid(Conn1_ARID),
        .m_axib_arlen(Conn1_ARLEN),
        .m_axib_arlock(Conn1_ARLOCK),
        .m_axib_arprot(Conn1_ARPROT),
        .m_axib_arready(Conn1_ARREADY),
        .m_axib_arsize(Conn1_ARSIZE),
        .m_axib_arvalid(Conn1_ARVALID),
        .m_axib_awaddr(Conn1_AWADDR),
        .m_axib_awburst(Conn1_AWBURST),
        .m_axib_awcache(Conn1_AWCACHE),
        .m_axib_awid(Conn1_AWID),
        .m_axib_awlen(Conn1_AWLEN),
        .m_axib_awlock(Conn1_AWLOCK),
        .m_axib_awprot(Conn1_AWPROT),
        .m_axib_awready(Conn1_AWREADY),
        .m_axib_awsize(Conn1_AWSIZE),
        .m_axib_awvalid(Conn1_AWVALID),
        .m_axib_bid(Conn1_BID),
        .m_axib_bready(Conn1_BREADY),
        .m_axib_bresp(Conn1_BRESP),
        .m_axib_bvalid(Conn1_BVALID),
        .m_axib_rdata(Conn1_RDATA),
        .m_axib_rid(Conn1_RID),
        .m_axib_rlast(Conn1_RLAST),
        .m_axib_rready(Conn1_RREADY),
        .m_axib_rresp(Conn1_RRESP),
        .m_axib_rvalid(Conn1_RVALID),
        .m_axib_wdata(Conn1_WDATA),
        .m_axib_wlast(Conn1_WLAST),
        .m_axib_wready(Conn1_WREADY),
        .m_axib_wstrb(Conn1_WSTRB),
        .m_axib_wvalid(Conn1_WVALID),
        .pci_exp_rxn(pcie_bridge_pcie_mgt_rxn),
        .pci_exp_rxp(pcie_bridge_pcie_mgt_rxp),
        .pci_exp_txn(pcie_bridge_pcie_mgt_txn),
        .pci_exp_txp(pcie_bridge_pcie_mgt_txp),
        .s_axil_araddr(axi4_lite_plug_0_AXI_ARADDR),
        .s_axil_arprot(axi4_lite_plug_0_AXI_ARPROT),
        .s_axil_arready(axi4_lite_plug_0_AXI_ARREADY),
        .s_axil_arvalid(axi4_lite_plug_0_AXI_ARVALID),
        .s_axil_awaddr(axi4_lite_plug_0_AXI_AWADDR),
        .s_axil_awprot(axi4_lite_plug_0_AXI_AWPROT),
        .s_axil_awready(axi4_lite_plug_0_AXI_AWREADY),
        .s_axil_awvalid(axi4_lite_plug_0_AXI_AWVALID),
        .s_axil_bready(axi4_lite_plug_0_AXI_BREADY),
        .s_axil_bresp(axi4_lite_plug_0_AXI_BRESP),
        .s_axil_bvalid(axi4_lite_plug_0_AXI_BVALID),
        .s_axil_rdata(axi4_lite_plug_0_AXI_RDATA),
        .s_axil_rready(axi4_lite_plug_0_AXI_RREADY),
        .s_axil_rresp(axi4_lite_plug_0_AXI_RRESP),
        .s_axil_rvalid(axi4_lite_plug_0_AXI_RVALID),
        .s_axil_wdata(axi4_lite_plug_0_AXI_WDATA),
        .s_axil_wready(axi4_lite_plug_0_AXI_WREADY),
        .s_axil_wstrb(axi4_lite_plug_0_AXI_WSTRB),
        .s_axil_wvalid(axi4_lite_plug_0_AXI_WVALID),
        .sys_clk(util_ds_buf_0_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(xlconstant_0_dout),
        .usr_irq_req(1'b0));
  top_level_util_ds_buf_0_0 pcie_clock
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_0_IBUF_DS_ODIV2),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
endmodule

module s00_couplers_imp_63BTRP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [3:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [3:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [511:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [511:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [63:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[3:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=53,numReposBlks=39,numNonXlnxBlks=0,numHierBlks=14,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=16,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (ddr4_bank0_clk_clk_n,
    ddr4_bank0_clk_clk_p,
    ddr4_bank1_clk_clk_n,
    ddr4_bank1_clk_clk_p,
    gt_serial_port_0_grx_n,
    gt_serial_port_0_grx_p,
    gt_serial_port_0_gtx_n,
    gt_serial_port_0_gtx_p,
    gt_serial_port_1_grx_n,
    gt_serial_port_1_grx_p,
    gt_serial_port_1_gtx_n,
    gt_serial_port_1_gtx_p,
    init_clk,
    led_green_l,
    led_orange_l,
    m0_ddr4_act_n,
    m0_ddr4_adr,
    m0_ddr4_ba,
    m0_ddr4_bg,
    m0_ddr4_ck_c,
    m0_ddr4_ck_t,
    m0_ddr4_cke,
    m0_ddr4_cs_n,
    m0_ddr4_dm_n,
    m0_ddr4_dq,
    m0_ddr4_dqs_c,
    m0_ddr4_dqs_t,
    m0_ddr4_odt,
    m0_ddr4_reset_n,
    m1_ddr4_act_n,
    m1_ddr4_adr,
    m1_ddr4_ba,
    m1_ddr4_bg,
    m1_ddr4_ck_c,
    m1_ddr4_ck_t,
    m1_ddr4_cke,
    m1_ddr4_cs_n,
    m1_ddr4_dm_n,
    m1_ddr4_dq,
    m1_ddr4_dqs_c,
    m1_ddr4_dqs_t,
    m1_ddr4_odt,
    m1_ddr4_reset_n,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_bank0_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_bank0_clk, CAN_DEBUG false, FREQ_HZ 100000000" *) input ddr4_bank0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_bank0_clk CLK_P" *) input ddr4_bank0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_bank1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_bank1_clk, CAN_DEBUG false, FREQ_HZ 100000000" *) input ddr4_bank1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_bank1_clk CLK_P" *) input ddr4_bank1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_serial_port_0, CAN_DEBUG false" *) input [3:0]gt_serial_port_0_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GRX_P" *) input [3:0]gt_serial_port_0_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GTX_N" *) output [3:0]gt_serial_port_0_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GTX_P" *) output [3:0]gt_serial_port_0_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_1 GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_serial_port_1, CAN_DEBUG false" *) input [3:0]gt_serial_port_1_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_1 GRX_P" *) input [3:0]gt_serial_port_1_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_1 GTX_N" *) output [3:0]gt_serial_port_1_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_1 GTX_P" *) output [3:0]gt_serial_port_1_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.INIT_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.INIT_CLK, CLK_DOMAIN top_level_init_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input init_clk;
  output [3:0]led_green_l;
  output [3:0]led_orange_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_ddr4, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_PART MT40A512M8RH-075E, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output m0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 ADR" *) output [16:0]m0_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 BA" *) output [1:0]m0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 BG" *) output [1:0]m0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 CK_C" *) output [0:0]m0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 CK_T" *) output [0:0]m0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 CKE" *) output [0:0]m0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 CS_N" *) output [0:0]m0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 DM_N" *) inout [7:0]m0_ddr4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 DQ" *) inout [63:0]m0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 DQS_C" *) inout [7:0]m0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 DQS_T" *) inout [7:0]m0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 ODT" *) output [0:0]m0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m0_ddr4 RESET_N" *) output m0_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m1_ddr4, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_PART MT40A512M8RH-075E, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output m1_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 ADR" *) output [16:0]m1_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 BA" *) output [1:0]m1_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 BG" *) output [1:0]m1_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 CK_C" *) output [0:0]m1_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 CK_T" *) output [0:0]m1_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 CKE" *) output [0:0]m1_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 CS_N" *) output [0:0]m1_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 DM_N" *) inout [7:0]m1_ddr4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 DQ" *) inout [63:0]m1_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 DQS_C" *) inout [7:0]m1_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 DQS_T" *) inout [7:0]m1_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 ODT" *) output [0:0]m1_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 m1_ddr4 RESET_N" *) output m1_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;

  wire [63:0]AXIMM_IN_ARADDR;
  wire [1:0]AXIMM_IN_ARBURST;
  wire [3:0]AXIMM_IN_ARCACHE;
  wire [3:0]AXIMM_IN_ARID;
  wire [7:0]AXIMM_IN_ARLEN;
  wire [0:0]AXIMM_IN_ARLOCK;
  wire [2:0]AXIMM_IN_ARPROT;
  wire AXIMM_IN_ARREADY;
  wire [2:0]AXIMM_IN_ARSIZE;
  wire AXIMM_IN_ARVALID;
  wire [63:0]AXIMM_IN_AWADDR;
  wire [1:0]AXIMM_IN_AWBURST;
  wire [3:0]AXIMM_IN_AWCACHE;
  wire [3:0]AXIMM_IN_AWID;
  wire [7:0]AXIMM_IN_AWLEN;
  wire [0:0]AXIMM_IN_AWLOCK;
  wire [2:0]AXIMM_IN_AWPROT;
  wire AXIMM_IN_AWREADY;
  wire [2:0]AXIMM_IN_AWSIZE;
  wire AXIMM_IN_AWVALID;
  wire [3:0]AXIMM_IN_BID;
  wire AXIMM_IN_BREADY;
  wire [1:0]AXIMM_IN_BRESP;
  wire AXIMM_IN_BVALID;
  wire [511:0]AXIMM_IN_RDATA;
  wire [3:0]AXIMM_IN_RID;
  wire AXIMM_IN_RLAST;
  wire AXIMM_IN_RREADY;
  wire [1:0]AXIMM_IN_RRESP;
  wire AXIMM_IN_RVALID;
  wire [511:0]AXIMM_IN_WDATA;
  wire AXIMM_IN_WLAST;
  wire AXIMM_IN_WREADY;
  wire [63:0]AXIMM_IN_WSTRB;
  wire AXIMM_IN_WVALID;
  wire [63:0]AXIMM_OUT_ARADDR;
  wire [1:0]AXIMM_OUT_ARBURST;
  wire [3:0]AXIMM_OUT_ARCACHE;
  wire [3:0]AXIMM_OUT_ARID;
  wire [7:0]AXIMM_OUT_ARLEN;
  wire AXIMM_OUT_ARLOCK;
  wire [2:0]AXIMM_OUT_ARPROT;
  wire [3:0]AXIMM_OUT_ARQOS;
  wire AXIMM_OUT_ARREADY;
  wire AXIMM_OUT_ARVALID;
  wire [63:0]AXIMM_OUT_AWADDR;
  wire [1:0]AXIMM_OUT_AWBURST;
  wire [3:0]AXIMM_OUT_AWCACHE;
  wire [3:0]AXIMM_OUT_AWID;
  wire [7:0]AXIMM_OUT_AWLEN;
  wire AXIMM_OUT_AWLOCK;
  wire [2:0]AXIMM_OUT_AWPROT;
  wire [3:0]AXIMM_OUT_AWQOS;
  wire AXIMM_OUT_AWREADY;
  wire [2:0]AXIMM_OUT_AWSIZE;
  wire AXIMM_OUT_AWVALID;
  wire AXIMM_OUT_BREADY;
  wire [1:0]AXIMM_OUT_BRESP;
  wire AXIMM_OUT_BVALID;
  wire [511:0]AXIMM_OUT_RDATA;
  wire AXIMM_OUT_RLAST;
  wire AXIMM_OUT_RREADY;
  wire [1:0]AXIMM_OUT_RRESP;
  wire AXIMM_OUT_RVALID;
  wire [511:0]AXIMM_OUT_WDATA;
  wire AXIMM_OUT_WLAST;
  wire AXIMM_OUT_WREADY;
  wire [63:0]AXIMM_OUT_WSTRB;
  wire AXIMM_OUT_WVALID;
  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [63:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [3:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [3:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire [0:0]S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [5:0]S00_AXI_1_BID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [511:0]S00_AXI_1_RDATA;
  wire [5:0]S00_AXI_1_RID;
  wire [0:0]S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [511:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire [0:0]S00_AXI_1_WREADY;
  wire [63:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire [31:0]SYS_CONTROl_ARADDR;
  wire [2:0]SYS_CONTROl_ARPROT;
  wire SYS_CONTROl_ARREADY;
  wire SYS_CONTROl_ARVALID;
  wire [31:0]SYS_CONTROl_AWADDR;
  wire [2:0]SYS_CONTROl_AWPROT;
  wire SYS_CONTROl_AWREADY;
  wire SYS_CONTROl_AWVALID;
  wire SYS_CONTROl_BREADY;
  wire [1:0]SYS_CONTROl_BRESP;
  wire SYS_CONTROl_BVALID;
  wire [31:0]SYS_CONTROl_RDATA;
  wire SYS_CONTROl_RREADY;
  wire [1:0]SYS_CONTROl_RRESP;
  wire SYS_CONTROl_RVALID;
  wire [31:0]SYS_CONTROl_WDATA;
  wire SYS_CONTROl_WREADY;
  wire [3:0]SYS_CONTROl_WSTRB;
  wire SYS_CONTROl_WVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI_BID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI_RID;
  wire [0:0]axi_interconnect_0_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_M03_AXI_ARPROT;
  wire axi_interconnect_M03_AXI_ARREADY;
  wire axi_interconnect_M03_AXI_ARVALID;
  wire [63:0]axi_interconnect_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_M03_AXI_AWPROT;
  wire axi_interconnect_M03_AXI_AWREADY;
  wire axi_interconnect_M03_AXI_AWVALID;
  wire axi_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_M03_AXI_BRESP;
  wire axi_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_M03_AXI_RDATA;
  wire axi_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_M03_AXI_RRESP;
  wire axi_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_M03_AXI_WDATA;
  wire axi_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_M03_AXI_WSTRB;
  wire axi_interconnect_M03_AXI_WVALID;
  wire [3:0]channel_0_gt_serial_port_0_GRX_N;
  wire [3:0]channel_0_gt_serial_port_0_GRX_P;
  wire [3:0]channel_0_gt_serial_port_0_GTX_N;
  wire [3:0]channel_0_gt_serial_port_0_GTX_P;
  wire channel_0_idle;
  wire channel_0_rx_aligned;
  wire channel_1_cmac_clock;
  wire channel_1_ddr4_ACT_N;
  wire [16:0]channel_1_ddr4_ADR;
  wire [1:0]channel_1_ddr4_BA;
  wire [1:0]channel_1_ddr4_BG;
  wire [0:0]channel_1_ddr4_CKE;
  wire [0:0]channel_1_ddr4_CK_C;
  wire [0:0]channel_1_ddr4_CK_T;
  wire [0:0]channel_1_ddr4_CS_N;
  wire [7:0]channel_1_ddr4_DM_N;
  wire [63:0]channel_1_ddr4_DQ;
  wire [7:0]channel_1_ddr4_DQS_C;
  wire [7:0]channel_1_ddr4_DQS_T;
  wire [0:0]channel_1_ddr4_ODT;
  wire channel_1_ddr4_RESET_N;
  wire channel_1_erase_idle;
  wire [3:0]channel_1_gt_serial_port_GRX_N;
  wire [3:0]channel_1_gt_serial_port_GRX_P;
  wire [3:0]channel_1_gt_serial_port_GTX_N;
  wire [3:0]channel_1_gt_serial_port_GTX_P;
  wire channel_1_init_calib_complete;
  wire channel_1_ram_clk;
  wire [0:0]channel_1_ram_resetn_out;
  wire channel_1_rx_aligned;
  wire [511:0]data_gen0_AXIS_OUT_TDATA;
  wire [63:0]data_gen0_AXIS_OUT_TKEEP;
  wire data_gen0_AXIS_OUT_TLAST;
  wire data_gen0_AXIS_OUT_TREADY;
  wire data_gen0_AXIS_OUT_TVALID;
  wire [511:0]data_gen1_AXIS_OUT_TDATA;
  wire [63:0]data_gen1_AXIS_OUT_TKEEP;
  wire data_gen1_AXIS_OUT_TLAST;
  wire data_gen1_AXIS_OUT_TREADY;
  wire data_gen1_AXIS_OUT_TVALID;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire [0:0]ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_0_c0_init_calib_complete;
  wire ddr4_clk_0_1_CLK_N;
  wire ddr4_clk_0_1_CLK_P;
  wire ethernet_cmac_clock0;
  wire init_clk_1;
  wire [15:0]pcie_bridge_pcie_mgt_rxn;
  wire [15:0]pcie_bridge_pcie_mgt_rxp;
  wire [15:0]pcie_bridge_pcie_mgt_txn;
  wire [15:0]pcie_bridge_pcie_mgt_txp;
  wire qsfp0_clk_1_CLK_N;
  wire qsfp0_clk_1_CLK_P;
  wire qsfp_clk_0_1_CLK_N;
  wire qsfp_clk_0_1_CLK_P;
  wire sys_control_0_erase_ram;
  wire sys_control_0_sys_reset_out;
  wire [3:0]sys_control_led_green_l;
  wire [3:0]sys_control_led_orang_l;
  wire sys_control_packet_gate;
  wire [63:0]sys_control_window_addr;

  assign C0_SYS_CLK_0_1_CLK_N = ddr4_bank0_clk_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = ddr4_bank0_clk_clk_p;
  assign CLK_IN_D_0_1_CLK_N = pcie_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_refclk_clk_p[0];
  assign channel_0_gt_serial_port_0_GRX_N = gt_serial_port_0_grx_n[3:0];
  assign channel_0_gt_serial_port_0_GRX_P = gt_serial_port_0_grx_p[3:0];
  assign channel_1_gt_serial_port_GRX_N = gt_serial_port_1_grx_n[3:0];
  assign channel_1_gt_serial_port_GRX_P = gt_serial_port_1_grx_p[3:0];
  assign ddr4_clk_0_1_CLK_N = ddr4_bank1_clk_clk_n;
  assign ddr4_clk_0_1_CLK_P = ddr4_bank1_clk_clk_p;
  assign gt_serial_port_0_gtx_n[3:0] = channel_0_gt_serial_port_0_GTX_N;
  assign gt_serial_port_0_gtx_p[3:0] = channel_0_gt_serial_port_0_GTX_P;
  assign gt_serial_port_1_gtx_n[3:0] = channel_1_gt_serial_port_GTX_N;
  assign gt_serial_port_1_gtx_p[3:0] = channel_1_gt_serial_port_GTX_P;
  assign init_clk_1 = init_clk;
  assign led_green_l[3:0] = sys_control_led_green_l;
  assign led_orange_l[3:0] = sys_control_led_orang_l;
  assign m0_ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign m0_ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign m0_ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign m0_ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign m0_ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign m0_ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign m0_ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign m0_ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign m0_ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign m0_ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign m1_ddr4_act_n = channel_1_ddr4_ACT_N;
  assign m1_ddr4_adr[16:0] = channel_1_ddr4_ADR;
  assign m1_ddr4_ba[1:0] = channel_1_ddr4_BA;
  assign m1_ddr4_bg[1:0] = channel_1_ddr4_BG;
  assign m1_ddr4_ck_c[0] = channel_1_ddr4_CK_C;
  assign m1_ddr4_ck_t[0] = channel_1_ddr4_CK_T;
  assign m1_ddr4_cke[0] = channel_1_ddr4_CKE;
  assign m1_ddr4_cs_n[0] = channel_1_ddr4_CS_N;
  assign m1_ddr4_odt[0] = channel_1_ddr4_ODT;
  assign m1_ddr4_reset_n = channel_1_ddr4_RESET_N;
  assign pcie_bridge_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign pcie_bridge_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  assign pcie_mgt_txn[15:0] = pcie_bridge_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = pcie_bridge_pcie_mgt_txp;
  assign qsfp0_clk_1_CLK_N = qsfp0_clk_clk_n;
  assign qsfp0_clk_1_CLK_P = qsfp0_clk_clk_p;
  assign qsfp_clk_0_1_CLK_N = qsfp1_clk_clk_n;
  assign qsfp_clk_0_1_CLK_P = qsfp1_clk_clk_p;
  top_level_axi_interconnect_0_0 axi_interconnect
       (.ACLK(S00_ACLK_1),
        .ARESETN(S00_ARESETN_1),
        .M00_ACLK(ddr4_0_c0_ddr4_ui_clk),
        .M00_ARESETN(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(S00_ACLK_1),
        .M01_ARESETN(S00_ARESETN_1),
        .M01_AXI_araddr(SYS_CONTROl_ARADDR),
        .M01_AXI_arprot(SYS_CONTROl_ARPROT),
        .M01_AXI_arready(SYS_CONTROl_ARREADY),
        .M01_AXI_arvalid(SYS_CONTROl_ARVALID),
        .M01_AXI_awaddr(SYS_CONTROl_AWADDR),
        .M01_AXI_awprot(SYS_CONTROl_AWPROT),
        .M01_AXI_awready(SYS_CONTROl_AWREADY),
        .M01_AXI_awvalid(SYS_CONTROl_AWVALID),
        .M01_AXI_bready(SYS_CONTROl_BREADY),
        .M01_AXI_bresp(SYS_CONTROl_BRESP),
        .M01_AXI_bvalid(SYS_CONTROl_BVALID),
        .M01_AXI_rdata(SYS_CONTROl_RDATA),
        .M01_AXI_rready(SYS_CONTROl_RREADY),
        .M01_AXI_rresp(SYS_CONTROl_RRESP),
        .M01_AXI_rvalid(SYS_CONTROl_RVALID),
        .M01_AXI_wdata(SYS_CONTROl_WDATA),
        .M01_AXI_wready(SYS_CONTROl_WREADY),
        .M01_AXI_wstrb(SYS_CONTROl_WSTRB),
        .M01_AXI_wvalid(SYS_CONTROl_WVALID),
        .M02_ACLK(channel_1_ram_clk),
        .M02_ARESETN(channel_1_ram_resetn_out),
        .M02_AXI_araddr(S00_AXI_1_ARADDR),
        .M02_AXI_arburst(S00_AXI_1_ARBURST),
        .M02_AXI_arcache(S00_AXI_1_ARCACHE),
        .M02_AXI_arid(S00_AXI_1_ARID),
        .M02_AXI_arlen(S00_AXI_1_ARLEN),
        .M02_AXI_arlock(S00_AXI_1_ARLOCK),
        .M02_AXI_arprot(S00_AXI_1_ARPROT),
        .M02_AXI_arqos(S00_AXI_1_ARQOS),
        .M02_AXI_arready(S00_AXI_1_ARREADY),
        .M02_AXI_arsize(S00_AXI_1_ARSIZE),
        .M02_AXI_arvalid(S00_AXI_1_ARVALID),
        .M02_AXI_awaddr(S00_AXI_1_AWADDR),
        .M02_AXI_awburst(S00_AXI_1_AWBURST),
        .M02_AXI_awcache(S00_AXI_1_AWCACHE),
        .M02_AXI_awid(S00_AXI_1_AWID),
        .M02_AXI_awlen(S00_AXI_1_AWLEN),
        .M02_AXI_awlock(S00_AXI_1_AWLOCK),
        .M02_AXI_awprot(S00_AXI_1_AWPROT),
        .M02_AXI_awqos(S00_AXI_1_AWQOS),
        .M02_AXI_awready(S00_AXI_1_AWREADY),
        .M02_AXI_awsize(S00_AXI_1_AWSIZE),
        .M02_AXI_awvalid(S00_AXI_1_AWVALID),
        .M02_AXI_bid(S00_AXI_1_BID),
        .M02_AXI_bready(S00_AXI_1_BREADY),
        .M02_AXI_bresp(S00_AXI_1_BRESP),
        .M02_AXI_bvalid(S00_AXI_1_BVALID),
        .M02_AXI_rdata(S00_AXI_1_RDATA),
        .M02_AXI_rid(S00_AXI_1_RID),
        .M02_AXI_rlast(S00_AXI_1_RLAST),
        .M02_AXI_rready(S00_AXI_1_RREADY),
        .M02_AXI_rresp(S00_AXI_1_RRESP),
        .M02_AXI_rvalid(S00_AXI_1_RVALID),
        .M02_AXI_wdata(S00_AXI_1_WDATA),
        .M02_AXI_wlast(S00_AXI_1_WLAST),
        .M02_AXI_wready(S00_AXI_1_WREADY),
        .M02_AXI_wstrb(S00_AXI_1_WSTRB),
        .M02_AXI_wvalid(S00_AXI_1_WVALID),
        .M03_ACLK(S00_ACLK_1),
        .M03_ARESETN(S00_ARESETN_1),
        .M03_AXI_araddr(axi_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_M03_AXI_WVALID),
        .S00_ACLK(S00_ACLK_1),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(AXIMM_OUT_ARADDR),
        .S00_AXI_arburst(AXIMM_OUT_ARBURST),
        .S00_AXI_arcache(AXIMM_OUT_ARCACHE),
        .S00_AXI_arid(AXIMM_OUT_ARID),
        .S00_AXI_arlen(AXIMM_OUT_ARLEN),
        .S00_AXI_arlock(AXIMM_OUT_ARLOCK),
        .S00_AXI_arprot(AXIMM_OUT_ARPROT),
        .S00_AXI_arqos(AXIMM_OUT_ARQOS),
        .S00_AXI_arready(AXIMM_OUT_ARREADY),
        .S00_AXI_arvalid(AXIMM_OUT_ARVALID),
        .S00_AXI_awaddr(AXIMM_OUT_AWADDR),
        .S00_AXI_awburst(AXIMM_OUT_AWBURST),
        .S00_AXI_awcache(AXIMM_OUT_AWCACHE),
        .S00_AXI_awid(AXIMM_OUT_AWID),
        .S00_AXI_awlen(AXIMM_OUT_AWLEN),
        .S00_AXI_awlock(AXIMM_OUT_AWLOCK),
        .S00_AXI_awprot(AXIMM_OUT_AWPROT),
        .S00_AXI_awqos(AXIMM_OUT_AWQOS),
        .S00_AXI_awready(AXIMM_OUT_AWREADY),
        .S00_AXI_awsize(AXIMM_OUT_AWSIZE),
        .S00_AXI_awvalid(AXIMM_OUT_AWVALID),
        .S00_AXI_bready(AXIMM_OUT_BREADY),
        .S00_AXI_bresp(AXIMM_OUT_BRESP),
        .S00_AXI_bvalid(AXIMM_OUT_BVALID),
        .S00_AXI_rdata(AXIMM_OUT_RDATA),
        .S00_AXI_rlast(AXIMM_OUT_RLAST),
        .S00_AXI_rready(AXIMM_OUT_RREADY),
        .S00_AXI_rresp(AXIMM_OUT_RRESP),
        .S00_AXI_rvalid(AXIMM_OUT_RVALID),
        .S00_AXI_wdata(AXIMM_OUT_WDATA),
        .S00_AXI_wlast(AXIMM_OUT_WLAST),
        .S00_AXI_wready(AXIMM_OUT_WREADY),
        .S00_AXI_wstrb(AXIMM_OUT_WSTRB),
        .S00_AXI_wvalid(AXIMM_OUT_WVALID));
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(S00_ACLK_1),
        .AXI_ARESETN(S00_ARESETN_1),
        .S_AXI_ARADDR(axi_interconnect_M03_AXI_ARADDR[4:0]),
        .S_AXI_ARPROT(axi_interconnect_M03_AXI_ARPROT),
        .S_AXI_ARREADY(axi_interconnect_M03_AXI_ARREADY),
        .S_AXI_ARVALID(axi_interconnect_M03_AXI_ARVALID),
        .S_AXI_AWADDR(axi_interconnect_M03_AXI_AWADDR[4:0]),
        .S_AXI_AWPROT(axi_interconnect_M03_AXI_AWPROT),
        .S_AXI_AWREADY(axi_interconnect_M03_AXI_AWREADY),
        .S_AXI_AWVALID(axi_interconnect_M03_AXI_AWVALID),
        .S_AXI_BREADY(axi_interconnect_M03_AXI_BREADY),
        .S_AXI_BRESP(axi_interconnect_M03_AXI_BRESP),
        .S_AXI_BVALID(axi_interconnect_M03_AXI_BVALID),
        .S_AXI_RDATA(axi_interconnect_M03_AXI_RDATA),
        .S_AXI_RREADY(axi_interconnect_M03_AXI_RREADY),
        .S_AXI_RRESP(axi_interconnect_M03_AXI_RRESP),
        .S_AXI_RVALID(axi_interconnect_M03_AXI_RVALID),
        .S_AXI_WDATA(axi_interconnect_M03_AXI_WDATA),
        .S_AXI_WREADY(axi_interconnect_M03_AXI_WREADY),
        .S_AXI_WSTRB(axi_interconnect_M03_AXI_WSTRB),
        .S_AXI_WVALID(axi_interconnect_M03_AXI_WVALID));
  aximm_window_imp_12DPIOM aximm_window
       (.M_AXI_araddr(AXIMM_OUT_ARADDR),
        .M_AXI_arburst(AXIMM_OUT_ARBURST),
        .M_AXI_arcache(AXIMM_OUT_ARCACHE),
        .M_AXI_arid(AXIMM_OUT_ARID),
        .M_AXI_arlen(AXIMM_OUT_ARLEN),
        .M_AXI_arlock(AXIMM_OUT_ARLOCK),
        .M_AXI_arprot(AXIMM_OUT_ARPROT),
        .M_AXI_arqos(AXIMM_OUT_ARQOS),
        .M_AXI_arready(AXIMM_OUT_ARREADY),
        .M_AXI_arvalid(AXIMM_OUT_ARVALID),
        .M_AXI_awaddr(AXIMM_OUT_AWADDR),
        .M_AXI_awburst(AXIMM_OUT_AWBURST),
        .M_AXI_awcache(AXIMM_OUT_AWCACHE),
        .M_AXI_awid(AXIMM_OUT_AWID),
        .M_AXI_awlen(AXIMM_OUT_AWLEN),
        .M_AXI_awlock(AXIMM_OUT_AWLOCK),
        .M_AXI_awprot(AXIMM_OUT_AWPROT),
        .M_AXI_awqos(AXIMM_OUT_AWQOS),
        .M_AXI_awready(AXIMM_OUT_AWREADY),
        .M_AXI_awsize(AXIMM_OUT_AWSIZE),
        .M_AXI_awvalid(AXIMM_OUT_AWVALID),
        .M_AXI_bready(AXIMM_OUT_BREADY),
        .M_AXI_bresp(AXIMM_OUT_BRESP),
        .M_AXI_bvalid(AXIMM_OUT_BVALID),
        .M_AXI_rdata(AXIMM_OUT_RDATA),
        .M_AXI_rlast(AXIMM_OUT_RLAST),
        .M_AXI_rready(AXIMM_OUT_RREADY),
        .M_AXI_rresp(AXIMM_OUT_RRESP),
        .M_AXI_rvalid(AXIMM_OUT_RVALID),
        .M_AXI_wdata(AXIMM_OUT_WDATA),
        .M_AXI_wlast(AXIMM_OUT_WLAST),
        .M_AXI_wready(AXIMM_OUT_WREADY),
        .M_AXI_wstrb(AXIMM_OUT_WSTRB),
        .M_AXI_wvalid(AXIMM_OUT_WVALID),
        .S_AXI_araddr(AXIMM_IN_ARADDR),
        .S_AXI_arburst(AXIMM_IN_ARBURST),
        .S_AXI_arcache(AXIMM_IN_ARCACHE),
        .S_AXI_arid(AXIMM_IN_ARID),
        .S_AXI_arlen(AXIMM_IN_ARLEN),
        .S_AXI_arlock(AXIMM_IN_ARLOCK),
        .S_AXI_arprot(AXIMM_IN_ARPROT),
        .S_AXI_arready(AXIMM_IN_ARREADY),
        .S_AXI_arsize(AXIMM_IN_ARSIZE),
        .S_AXI_arvalid(AXIMM_IN_ARVALID),
        .S_AXI_awaddr(AXIMM_IN_AWADDR),
        .S_AXI_awburst(AXIMM_IN_AWBURST),
        .S_AXI_awcache(AXIMM_IN_AWCACHE),
        .S_AXI_awid(AXIMM_IN_AWID),
        .S_AXI_awlen(AXIMM_IN_AWLEN),
        .S_AXI_awlock(AXIMM_IN_AWLOCK),
        .S_AXI_awprot(AXIMM_IN_AWPROT),
        .S_AXI_awready(AXIMM_IN_AWREADY),
        .S_AXI_awsize(AXIMM_IN_AWSIZE),
        .S_AXI_awvalid(AXIMM_IN_AWVALID),
        .S_AXI_bid(AXIMM_IN_BID),
        .S_AXI_bready(AXIMM_IN_BREADY),
        .S_AXI_bresp(AXIMM_IN_BRESP),
        .S_AXI_bvalid(AXIMM_IN_BVALID),
        .S_AXI_rdata(AXIMM_IN_RDATA),
        .S_AXI_rid(AXIMM_IN_RID),
        .S_AXI_rlast(AXIMM_IN_RLAST),
        .S_AXI_rready(AXIMM_IN_RREADY),
        .S_AXI_rresp(AXIMM_IN_RRESP),
        .S_AXI_rvalid(AXIMM_IN_RVALID),
        .S_AXI_wdata(AXIMM_IN_WDATA),
        .S_AXI_wlast(AXIMM_IN_WLAST),
        .S_AXI_wready(AXIMM_IN_WREADY),
        .S_AXI_wstrb(AXIMM_IN_WSTRB),
        .S_AXI_wvalid(AXIMM_IN_WVALID),
        .aresetn(S00_ARESETN_1),
        .clk(S00_ACLK_1),
        .window_addr(sys_control_window_addr));
  channel_0_imp_3EIWA1 channel_0
       (.S00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .S00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .S00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .S00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .S00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .S00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .S00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .S00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .S00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .S00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .axis_tx_tdata(data_gen0_AXIS_OUT_TDATA),
        .axis_tx_tkeep(data_gen0_AXIS_OUT_TKEEP),
        .axis_tx_tlast(data_gen0_AXIS_OUT_TLAST),
        .axis_tx_tready(data_gen0_AXIS_OUT_TREADY),
        .axis_tx_tvalid(data_gen0_AXIS_OUT_TVALID),
        .capture(sys_control_packet_gate),
        .cmac_clock(ethernet_cmac_clock0),
        .ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .ddr4_ba(ddr4_0_C0_DDR4_BA),
        .ddr4_bg(ddr4_0_C0_DDR4_BG),
        .ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .ddr4_clk_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .ddr4_clk_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .ddr4_dm_n(m0_ddr4_dm_n[7:0]),
        .ddr4_dq(m0_ddr4_dq[63:0]),
        .ddr4_dqs_c(m0_ddr4_dqs_c[7:0]),
        .ddr4_dqs_t(m0_ddr4_dqs_t[7:0]),
        .ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .erase_idle(channel_0_idle),
        .erase_ram(sys_control_0_erase_ram),
        .gt_serial_port_grx_n(channel_0_gt_serial_port_0_GRX_N),
        .gt_serial_port_grx_p(channel_0_gt_serial_port_0_GRX_P),
        .gt_serial_port_gtx_n(channel_0_gt_serial_port_0_GTX_N),
        .gt_serial_port_gtx_p(channel_0_gt_serial_port_0_GTX_P),
        .init_calib_complete(ddr4_0_c0_init_calib_complete),
        .init_clk(init_clk_1),
        .qsfp_clk_clk_n(qsfp0_clk_1_CLK_N),
        .qsfp_clk_clk_p(qsfp0_clk_1_CLK_P),
        .ram_clk(ddr4_0_c0_ddr4_ui_clk),
        .ram_resetn_out(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .rx_aligned(channel_0_rx_aligned),
        .sys_reset(sys_control_0_sys_reset_out));
  channel_1_imp_1R4OFYV channel_1
       (.S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .axis_tx_tdata(data_gen1_AXIS_OUT_TDATA),
        .axis_tx_tkeep(data_gen1_AXIS_OUT_TKEEP),
        .axis_tx_tlast(data_gen1_AXIS_OUT_TLAST),
        .axis_tx_tready(data_gen1_AXIS_OUT_TREADY),
        .axis_tx_tvalid(data_gen1_AXIS_OUT_TVALID),
        .capture(sys_control_packet_gate),
        .cmac_clock(channel_1_cmac_clock),
        .ddr4_act_n(channel_1_ddr4_ACT_N),
        .ddr4_adr(channel_1_ddr4_ADR),
        .ddr4_ba(channel_1_ddr4_BA),
        .ddr4_bg(channel_1_ddr4_BG),
        .ddr4_ck_c(channel_1_ddr4_CK_C),
        .ddr4_ck_t(channel_1_ddr4_CK_T),
        .ddr4_cke(channel_1_ddr4_CKE),
        .ddr4_clk_clk_n(ddr4_clk_0_1_CLK_N),
        .ddr4_clk_clk_p(ddr4_clk_0_1_CLK_P),
        .ddr4_cs_n(channel_1_ddr4_CS_N),
        .ddr4_dm_n(m1_ddr4_dm_n[7:0]),
        .ddr4_dq(m1_ddr4_dq[63:0]),
        .ddr4_dqs_c(m1_ddr4_dqs_c[7:0]),
        .ddr4_dqs_t(m1_ddr4_dqs_t[7:0]),
        .ddr4_odt(channel_1_ddr4_ODT),
        .ddr4_reset_n(channel_1_ddr4_RESET_N),
        .erase_idle(channel_1_erase_idle),
        .erase_ram(sys_control_0_erase_ram),
        .gt_serial_port_grx_n(channel_1_gt_serial_port_GRX_N),
        .gt_serial_port_grx_p(channel_1_gt_serial_port_GRX_P),
        .gt_serial_port_gtx_n(channel_1_gt_serial_port_GTX_N),
        .gt_serial_port_gtx_p(channel_1_gt_serial_port_GTX_P),
        .init_calib_complete(channel_1_init_calib_complete),
        .init_clk(init_clk_1),
        .qsfp_clk_clk_n(qsfp_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(qsfp_clk_0_1_CLK_P),
        .ram_clk(channel_1_ram_clk),
        .ram_resetn_out(channel_1_ram_resetn_out),
        .rx_aligned(channel_1_rx_aligned),
        .sys_reset(sys_control_0_sys_reset_out));
  data_gen0_imp_SJODJ5 data_gen0
       (.AXIS_OUT_tdata(data_gen0_AXIS_OUT_TDATA),
        .AXIS_OUT_tkeep(data_gen0_AXIS_OUT_TKEEP),
        .AXIS_OUT_tlast(data_gen0_AXIS_OUT_TLAST),
        .AXIS_OUT_tready(data_gen0_AXIS_OUT_TREADY),
        .AXIS_OUT_tvalid(data_gen0_AXIS_OUT_TVALID),
        .clk(ethernet_cmac_clock0));
  data_gen1_imp_121PSQN data_gen1
       (.AXIS_OUT_tdata(data_gen1_AXIS_OUT_TDATA),
        .AXIS_OUT_tkeep(data_gen1_AXIS_OUT_TKEEP),
        .AXIS_OUT_tlast(data_gen1_AXIS_OUT_TLAST),
        .AXIS_OUT_tready(data_gen1_AXIS_OUT_TREADY),
        .AXIS_OUT_tvalid(data_gen1_AXIS_OUT_TVALID),
        .clk(channel_1_cmac_clock));
  pcie_bridge_imp_1AINXYK pcie_bridge
       (.M_AXI_B_araddr(AXIMM_IN_ARADDR),
        .M_AXI_B_arburst(AXIMM_IN_ARBURST),
        .M_AXI_B_arcache(AXIMM_IN_ARCACHE),
        .M_AXI_B_arid(AXIMM_IN_ARID),
        .M_AXI_B_arlen(AXIMM_IN_ARLEN),
        .M_AXI_B_arlock(AXIMM_IN_ARLOCK),
        .M_AXI_B_arprot(AXIMM_IN_ARPROT),
        .M_AXI_B_arready(AXIMM_IN_ARREADY),
        .M_AXI_B_arsize(AXIMM_IN_ARSIZE),
        .M_AXI_B_arvalid(AXIMM_IN_ARVALID),
        .M_AXI_B_awaddr(AXIMM_IN_AWADDR),
        .M_AXI_B_awburst(AXIMM_IN_AWBURST),
        .M_AXI_B_awcache(AXIMM_IN_AWCACHE),
        .M_AXI_B_awid(AXIMM_IN_AWID),
        .M_AXI_B_awlen(AXIMM_IN_AWLEN),
        .M_AXI_B_awlock(AXIMM_IN_AWLOCK),
        .M_AXI_B_awprot(AXIMM_IN_AWPROT),
        .M_AXI_B_awready(AXIMM_IN_AWREADY),
        .M_AXI_B_awsize(AXIMM_IN_AWSIZE),
        .M_AXI_B_awvalid(AXIMM_IN_AWVALID),
        .M_AXI_B_bid(AXIMM_IN_BID),
        .M_AXI_B_bready(AXIMM_IN_BREADY),
        .M_AXI_B_bresp(AXIMM_IN_BRESP),
        .M_AXI_B_bvalid(AXIMM_IN_BVALID),
        .M_AXI_B_rdata(AXIMM_IN_RDATA),
        .M_AXI_B_rid(AXIMM_IN_RID),
        .M_AXI_B_rlast(AXIMM_IN_RLAST),
        .M_AXI_B_rready(AXIMM_IN_RREADY),
        .M_AXI_B_rresp(AXIMM_IN_RRESP),
        .M_AXI_B_rvalid(AXIMM_IN_RVALID),
        .M_AXI_B_wdata(AXIMM_IN_WDATA),
        .M_AXI_B_wlast(AXIMM_IN_WLAST),
        .M_AXI_B_wready(AXIMM_IN_WREADY),
        .M_AXI_B_wstrb(AXIMM_IN_WSTRB),
        .M_AXI_B_wvalid(AXIMM_IN_WVALID),
        .axi_aclk(S00_ACLK_1),
        .axi_aresetn(S00_ARESETN_1),
        .pcie_mgt_0_rxn(pcie_bridge_pcie_mgt_rxn),
        .pcie_mgt_0_rxp(pcie_bridge_pcie_mgt_rxp),
        .pcie_mgt_0_txn(pcie_bridge_pcie_mgt_txn),
        .pcie_mgt_0_txp(pcie_bridge_pcie_mgt_txp),
        .pcie_refclk_clk_n(CLK_IN_D_0_1_CLK_N),
        .pcie_refclk_clk_p(CLK_IN_D_0_1_CLK_P));
  top_level_sys_control_0_0 sys_control
       (.S_AXI_ARADDR(SYS_CONTROl_ARADDR),
        .S_AXI_ARPROT(SYS_CONTROl_ARPROT),
        .S_AXI_ARREADY(SYS_CONTROl_ARREADY),
        .S_AXI_ARVALID(SYS_CONTROl_ARVALID),
        .S_AXI_AWADDR(SYS_CONTROl_AWADDR),
        .S_AXI_AWPROT(SYS_CONTROl_AWPROT),
        .S_AXI_AWREADY(SYS_CONTROl_AWREADY),
        .S_AXI_AWVALID(SYS_CONTROl_AWVALID),
        .S_AXI_BREADY(SYS_CONTROl_BREADY),
        .S_AXI_BRESP(SYS_CONTROl_BRESP),
        .S_AXI_BVALID(SYS_CONTROl_BVALID),
        .S_AXI_RDATA(SYS_CONTROl_RDATA),
        .S_AXI_RREADY(SYS_CONTROl_RREADY),
        .S_AXI_RRESP(SYS_CONTROl_RRESP),
        .S_AXI_RVALID(SYS_CONTROl_RVALID),
        .S_AXI_WDATA(SYS_CONTROl_WDATA),
        .S_AXI_WREADY(SYS_CONTROl_WREADY),
        .S_AXI_WSTRB(SYS_CONTROl_WSTRB),
        .S_AXI_WVALID(SYS_CONTROl_WVALID),
        .bank0_calib_complete_async(ddr4_0_c0_init_calib_complete),
        .bank0_erase_idle_async(channel_0_idle),
        .bank1_calib_complete_async(channel_1_init_calib_complete),
        .bank1_erase_idle_async(channel_1_erase_idle),
        .clk(S00_ACLK_1),
        .erase_ram(sys_control_0_erase_ram),
        .led_green_l(sys_control_led_green_l),
        .led_orang_l(sys_control_led_orang_l),
        .packet_gate(sys_control_packet_gate),
        .qsfp0_status_async(channel_0_rx_aligned),
        .qsfp1_status_async(channel_1_rx_aligned),
        .resetn(S00_ARESETN_1),
        .sys_reset_out(sys_control_0_sys_reset_out),
        .window_addr(sys_control_window_addr));
endmodule

module top_level_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [63:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [3:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  input [0:0]M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output [0:0]M02_AXI_arvalid;
  output [63:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [3:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  input [0:0]M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output [0:0]M02_AXI_awvalid;
  input [5:0]M02_AXI_bid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [511:0]M02_AXI_rdata;
  input [5:0]M02_AXI_rid;
  input [0:0]M02_AXI_rlast;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [511:0]M02_AXI_wdata;
  output [0:0]M02_AXI_wlast;
  input [0:0]M02_AXI_wready;
  output [63:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [63:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [63:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_ACLK_net;
  wire axi_interconnect_ARESETN_net;
  wire [63:0]axi_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_to_s00_couplers_ARCACHE;
  wire [3:0]axi_interconnect_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_to_s00_couplers_ARLEN;
  wire axi_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_to_s00_couplers_ARQOS;
  wire axi_interconnect_to_s00_couplers_ARREADY;
  wire axi_interconnect_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_to_s00_couplers_AWCACHE;
  wire [3:0]axi_interconnect_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_to_s00_couplers_AWLEN;
  wire axi_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_to_s00_couplers_AWQOS;
  wire axi_interconnect_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_to_s00_couplers_AWSIZE;
  wire axi_interconnect_to_s00_couplers_AWVALID;
  wire axi_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_to_s00_couplers_BRESP;
  wire axi_interconnect_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_to_s00_couplers_RDATA;
  wire axi_interconnect_to_s00_couplers_RLAST;
  wire axi_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_to_s00_couplers_RRESP;
  wire axi_interconnect_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_to_s00_couplers_WDATA;
  wire axi_interconnect_to_s00_couplers_WLAST;
  wire axi_interconnect_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_to_s00_couplers_WSTRB;
  wire axi_interconnect_to_s00_couplers_WVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_ARCACHE;
  wire [3:0]m00_couplers_to_axi_interconnect_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_ARQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_ARSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_ARVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_AWCACHE;
  wire [3:0]m00_couplers_to_axi_interconnect_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_AWQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_AWSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_AWVALID;
  wire [5:0]m00_couplers_to_axi_interconnect_BID;
  wire [0:0]m00_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_BVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_RDATA;
  wire [5:0]m00_couplers_to_axi_interconnect_RID;
  wire [0:0]m00_couplers_to_axi_interconnect_RLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_RVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_WLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_WREADY;
  wire [63:0]m00_couplers_to_axi_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_ARADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_ARPROT;
  wire m01_couplers_to_axi_interconnect_ARREADY;
  wire m01_couplers_to_axi_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_AWADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_AWPROT;
  wire m01_couplers_to_axi_interconnect_AWREADY;
  wire m01_couplers_to_axi_interconnect_AWVALID;
  wire m01_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_BRESP;
  wire m01_couplers_to_axi_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_RDATA;
  wire m01_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_RRESP;
  wire m01_couplers_to_axi_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_WDATA;
  wire m01_couplers_to_axi_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_WSTRB;
  wire m01_couplers_to_axi_interconnect_WVALID;
  wire [63:0]m02_couplers_to_axi_interconnect_ARADDR;
  wire [1:0]m02_couplers_to_axi_interconnect_ARBURST;
  wire [3:0]m02_couplers_to_axi_interconnect_ARCACHE;
  wire [3:0]m02_couplers_to_axi_interconnect_ARID;
  wire [7:0]m02_couplers_to_axi_interconnect_ARLEN;
  wire [0:0]m02_couplers_to_axi_interconnect_ARLOCK;
  wire [2:0]m02_couplers_to_axi_interconnect_ARPROT;
  wire [3:0]m02_couplers_to_axi_interconnect_ARQOS;
  wire [0:0]m02_couplers_to_axi_interconnect_ARREADY;
  wire [2:0]m02_couplers_to_axi_interconnect_ARSIZE;
  wire [0:0]m02_couplers_to_axi_interconnect_ARVALID;
  wire [63:0]m02_couplers_to_axi_interconnect_AWADDR;
  wire [1:0]m02_couplers_to_axi_interconnect_AWBURST;
  wire [3:0]m02_couplers_to_axi_interconnect_AWCACHE;
  wire [3:0]m02_couplers_to_axi_interconnect_AWID;
  wire [7:0]m02_couplers_to_axi_interconnect_AWLEN;
  wire [0:0]m02_couplers_to_axi_interconnect_AWLOCK;
  wire [2:0]m02_couplers_to_axi_interconnect_AWPROT;
  wire [3:0]m02_couplers_to_axi_interconnect_AWQOS;
  wire [0:0]m02_couplers_to_axi_interconnect_AWREADY;
  wire [2:0]m02_couplers_to_axi_interconnect_AWSIZE;
  wire [0:0]m02_couplers_to_axi_interconnect_AWVALID;
  wire [5:0]m02_couplers_to_axi_interconnect_BID;
  wire [0:0]m02_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_BRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_BVALID;
  wire [511:0]m02_couplers_to_axi_interconnect_RDATA;
  wire [5:0]m02_couplers_to_axi_interconnect_RID;
  wire [0:0]m02_couplers_to_axi_interconnect_RLAST;
  wire [0:0]m02_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_RRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_RVALID;
  wire [511:0]m02_couplers_to_axi_interconnect_WDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_WLAST;
  wire [0:0]m02_couplers_to_axi_interconnect_WREADY;
  wire [63:0]m02_couplers_to_axi_interconnect_WSTRB;
  wire [0:0]m02_couplers_to_axi_interconnect_WVALID;
  wire [63:0]m03_couplers_to_axi_interconnect_ARADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_ARPROT;
  wire m03_couplers_to_axi_interconnect_ARREADY;
  wire m03_couplers_to_axi_interconnect_ARVALID;
  wire [63:0]m03_couplers_to_axi_interconnect_AWADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_AWPROT;
  wire m03_couplers_to_axi_interconnect_AWREADY;
  wire m03_couplers_to_axi_interconnect_AWVALID;
  wire m03_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_BRESP;
  wire m03_couplers_to_axi_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_RDATA;
  wire m03_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_RRESP;
  wire m03_couplers_to_axi_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_WDATA;
  wire m03_couplers_to_axi_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_WSTRB;
  wire m03_couplers_to_axi_interconnect_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [3:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [3:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [3:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [3:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [3:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [3:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [7:4]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [7:4]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [3:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [511:0]xbar_to_m01_couplers_RDATA;
  wire [3:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [1023:512]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [127:64]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [191:128]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [11:8]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [191:128]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [11:8]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [3:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [511:0]xbar_to_m02_couplers_RDATA;
  wire [3:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [1535:1024]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [191:128]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [255:192]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [15:12]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [255:192]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [15:12]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [511:0]xbar_to_m03_couplers_RDATA;
  wire [3:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [2047:1536]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [255:192]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_axi_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_ARCACHE;
  assign M00_AXI_arid[3:0] = m00_couplers_to_axi_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_axi_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_AWCACHE;
  assign M00_AXI_awid[3:0] = m00_couplers_to_axi_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_interconnect_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_axi_interconnect_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_interconnect_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_interconnect_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[63:0] = m02_couplers_to_axi_interconnect_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_axi_interconnect_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_axi_interconnect_ARCACHE;
  assign M02_AXI_arid[3:0] = m02_couplers_to_axi_interconnect_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_axi_interconnect_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_axi_interconnect_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_interconnect_ARPROT;
  assign M02_AXI_arqos[3:0] = m02_couplers_to_axi_interconnect_ARQOS;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_axi_interconnect_ARSIZE;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_interconnect_ARVALID;
  assign M02_AXI_awaddr[63:0] = m02_couplers_to_axi_interconnect_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_axi_interconnect_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_axi_interconnect_AWCACHE;
  assign M02_AXI_awid[3:0] = m02_couplers_to_axi_interconnect_AWID;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_axi_interconnect_AWLEN;
  assign M02_AXI_awlock[0] = m02_couplers_to_axi_interconnect_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_interconnect_AWPROT;
  assign M02_AXI_awqos[3:0] = m02_couplers_to_axi_interconnect_AWQOS;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_axi_interconnect_AWSIZE;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_interconnect_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_interconnect_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_interconnect_RREADY;
  assign M02_AXI_wdata[511:0] = m02_couplers_to_axi_interconnect_WDATA;
  assign M02_AXI_wlast[0] = m02_couplers_to_axi_interconnect_WLAST;
  assign M02_AXI_wstrb[63:0] = m02_couplers_to_axi_interconnect_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_interconnect_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[63:0] = m03_couplers_to_axi_interconnect_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_ARVALID;
  assign M03_AXI_awaddr[63:0] = m03_couplers_to_axi_interconnect_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_to_s00_couplers_WREADY;
  assign axi_interconnect_ACLK_net = ACLK;
  assign axi_interconnect_ARESETN_net = ARESETN;
  assign axi_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_to_s00_couplers_ARID = S00_AXI_arid[3:0];
  assign axi_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_to_s00_couplers_AWID = S00_AXI_awid[3:0];
  assign axi_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_interconnect_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_interconnect_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_axi_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_interconnect_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_interconnect_BID = M02_AXI_bid[5:0];
  assign m02_couplers_to_axi_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_interconnect_RDATA = M02_AXI_rdata[511:0];
  assign m02_couplers_to_axi_interconnect_RID = M02_AXI_rid[5:0];
  assign m02_couplers_to_axi_interconnect_RLAST = M02_AXI_rlast[0];
  assign m02_couplers_to_axi_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_interconnect_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_WREADY = M03_AXI_wready;
  m00_couplers_imp_13D2W4P m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_P1CQY9 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1X7C4WO m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arburst(m02_couplers_to_axi_interconnect_ARBURST),
        .M_AXI_arcache(m02_couplers_to_axi_interconnect_ARCACHE),
        .M_AXI_arid(m02_couplers_to_axi_interconnect_ARID),
        .M_AXI_arlen(m02_couplers_to_axi_interconnect_ARLEN),
        .M_AXI_arlock(m02_couplers_to_axi_interconnect_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_axi_interconnect_ARPROT),
        .M_AXI_arqos(m02_couplers_to_axi_interconnect_ARQOS),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arsize(m02_couplers_to_axi_interconnect_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awburst(m02_couplers_to_axi_interconnect_AWBURST),
        .M_AXI_awcache(m02_couplers_to_axi_interconnect_AWCACHE),
        .M_AXI_awid(m02_couplers_to_axi_interconnect_AWID),
        .M_AXI_awlen(m02_couplers_to_axi_interconnect_AWLEN),
        .M_AXI_awlock(m02_couplers_to_axi_interconnect_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_axi_interconnect_AWPROT),
        .M_AXI_awqos(m02_couplers_to_axi_interconnect_AWQOS),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awsize(m02_couplers_to_axi_interconnect_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bid(m02_couplers_to_axi_interconnect_BID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rid(m02_couplers_to_axi_interconnect_RID),
        .M_AXI_rlast(m02_couplers_to_axi_interconnect_RLAST),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wlast(m02_couplers_to_axi_interconnect_WLAST),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_CWTEGW m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_63BTRP s00_couplers
       (.M_ACLK(axi_interconnect_ACLK_net),
        .M_ARESETN(axi_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_to_s00_couplers_WVALID));
  top_level_xbar_0 xbar
       (.aclk(axi_interconnect_ACLK_net),
        .aresetn(axi_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
