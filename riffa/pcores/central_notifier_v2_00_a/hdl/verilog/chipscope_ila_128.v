///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2012 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 13.3
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : chipscope_ila_128.v
// /___/   /\     Timestamp  : Wed May 16 15:30:16 PDT 2012
// \   \  /  \
//  \___\/\___\
//
// Design Name: Verilog Synthesis Wrapper
///////////////////////////////////////////////////////////////////////////////
// This wrapper is used to integrate with Project Navigator and PlanAhead

`timescale 1ns/1ps

module chipscope_ila_128(
    CONTROL,
    CLK,
    TRIG0);


inout [35 : 0] CONTROL;
input CLK;
input [127 : 0] TRIG0;

endmodule
