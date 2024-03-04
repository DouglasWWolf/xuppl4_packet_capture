//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 02-Mar-24  DWW     1  Initial creation
//====================================================================================

/*
    This module modifies an ordinary AXI-Master interface to access memory via
    a sliding-window mechanism
*/


module aximm_window #
(
    parameter       DW   = 512,
    parameter       AW   = 64,
    parameter[63:0] BAR1 = 64'h10_0000_0000
)
(
    // This clock input is here only to prevent Vivado from whining about
    // these AXI interfaces noit being associated with any clock
    input                                   clk,
    
    // This is the AXI address that PCIe BAR 1 maps to
    input[AW-1:0]                           window_addr,

    //=================   This is the AXI4 input interface   ==================

    // "Specify write address"              -- Master --    -- Slave --
    input [AW-1:0]                          S_AXI_AWADDR,
    input [7:0]                             S_AXI_AWLEN,
    input [2:0]                             S_AXI_AWSIZE,
    input [3:0]                             S_AXI_AWID,
    input [1:0]                             S_AXI_AWBURST,
    input                                   S_AXI_AWLOCK,
    input [3:0]                             S_AXI_AWCACHE,
    input [3:0]                             S_AXI_AWQOS,
    input [2:0]                             S_AXI_AWPROT,
    input                                   S_AXI_AWVALID,
    output                                                   S_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    input[DW-1:0]                           S_AXI_WDATA,
    input[(DW/8)-1:0]                       S_AXI_WSTRB,
    input                                   S_AXI_WVALID,
    input                                   S_AXI_WLAST,
    output                                                   S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                              S_AXI_BRESP,
    output                                                   S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input[AW-1:0]                           S_AXI_ARADDR,
    input                                   S_AXI_ARVALID,
    input[2:0]                              S_AXI_ARPROT,
    input                                   S_AXI_ARLOCK,
    input[3:0]                              S_AXI_ARID,
    input[7:0]                              S_AXI_ARLEN,
    input[1:0]                              S_AXI_ARBURST,
    input[3:0]                              S_AXI_ARCACHE,
    input[3:0]                              S_AXI_ARQOS,
    output                                                   S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[DW-1:0]                                           S_AXI_RDATA,
    output                                                   S_AXI_RVALID,
    output[1:0]                                              S_AXI_RRESP,
    output                                                   S_AXI_RLAST,
    input                                   S_AXI_RREADY,
    //==========================================================================


    //=================   This is the AXI4 output interface   ==================

    // "Specify write address"              -- Master --    -- Slave --
    output [AW-1:0]                         M_AXI_AWADDR,
    output [   7:0]                         M_AXI_AWLEN,
    output [   2:0]                         M_AXI_AWSIZE,
    output [   3:0]                         M_AXI_AWID,
    output [   1:0]                         M_AXI_AWBURST,
    output                                  M_AXI_AWLOCK,
    output [   3:0]                         M_AXI_AWCACHE,
    output [   3:0]                         M_AXI_AWQOS,
    output [   2:0]                         M_AXI_AWPROT,
    output                                  M_AXI_AWVALID,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output [DW-1:0]                         M_AXI_WDATA,
    output [(DW/8)-1:0]                     M_AXI_WSTRB,
    output                                  M_AXI_WVALID,
    output                                  M_AXI_WLAST,
    input                                                   M_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    input[1:0]                                              M_AXI_BRESP,
    input                                                   M_AXI_BVALID,
    output                                  M_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    output[AW-1:0]                          M_AXI_ARADDR,
    output                                  M_AXI_ARVALID,
    output[2:0]                             M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output[3:0]                             M_AXI_ARID,
    output[7:0]                             M_AXI_ARLEN,
    output[1:0]                             M_AXI_ARBURST,
    output[3:0]                             M_AXI_ARCACHE,
    output[3:0]                             M_AXI_ARQOS,
    input                                                   M_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    input[DW-1:0]                                           M_AXI_RDATA,
    input                                                   M_AXI_RVALID,
    input[1:0]                                              M_AXI_RRESP,
    input                                                   M_AXI_RLAST,
    output                                  M_AXI_RREADY
    //=========================================================================
);

// Master AW-channel
assign M_AXI_AWADDR  = (S_AXI_AWADDR < BAR1) ?  S_AXI_AWADDR : window_addr + (S_AXI_AWADDR - BAR1);             
assign M_AXI_AWLEN   = S_AXI_AWLEN  ;         
assign M_AXI_AWSIZE  = S_AXI_AWSIZE ;         
assign M_AXI_AWID    = S_AXI_AWID   ;         
assign M_AXI_AWBURST = S_AXI_AWBURST;         
assign M_AXI_AWLOCK  = S_AXI_AWLOCK ;     
assign M_AXI_AWCACHE = S_AXI_AWCACHE;         
assign M_AXI_AWQOS   = S_AXI_AWQOS  ;     
assign M_AXI_AWPROT  = S_AXI_AWPROT ;     
assign M_AXI_AWVALID = S_AXI_AWVALID;     

// Master W-channel 
assign M_AXI_WDATA  = S_AXI_WDATA ;     
assign M_AXI_WSTRB  = S_AXI_WSTRB ;     
assign M_AXI_WVALID = S_AXI_WVALID;     
assign M_AXI_WLAST  = S_AXI_WLAST ;     

// Master B-channel
assign M_AXI_BREADY = S_AXI_BREADY;

// Master AR-channel
assign M_AXI_ARADDR  = (S_AXI_ARADDR < BAR1) ?  S_AXI_ARADDR : window_addr + (S_AXI_ARADDR - BAR1);             
assign M_AXI_ARVALID = S_AXI_ARVALID;       
assign M_AXI_ARPROT  = S_AXI_ARPROT ;       
assign M_AXI_ARLOCK  = S_AXI_ARLOCK ;       
assign M_AXI_ARID    = S_AXI_ARID   ;   
assign M_AXI_ARLEN   = S_AXI_ARLEN  ;   
assign M_AXI_ARBURST = S_AXI_ARBURST;       
assign M_AXI_ARCACHE = S_AXI_ARCACHE;       
assign M_AXI_ARQOS   = S_AXI_ARQOS  ;           

// Master R-channel
assign M_AXI_RREADY  = S_AXI_RREADY;

// All of the slave signals
assign S_AXI_AWREADY = M_AXI_AWREADY;
assign S_AXI_WREADY  = M_AXI_WREADY;
assign S_AXI_BRESP   = M_AXI_BRESP;
assign S_AXI_BVALID  = M_AXI_BVALID;
assign S_AXI_ARREADY = M_AXI_ARREADY;
assign S_AXI_RDATA   = M_AXI_RDATA;
assign S_AXI_RVALID  = M_AXI_RVALID;
assign S_AXI_RRESP   = M_AXI_RRESP;
assign S_AXI_RLAST   = M_AXI_RLAST;

endmodule