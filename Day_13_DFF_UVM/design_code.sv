module dff(input clk, rst, din, output reg dout);

  always @(posedge clk) begin
    if(rst)
      dout<=1'b0;
    else dout<= din;      
  end
endmodule


///////////////////////////////////////////

interface dff_if;

  logic rst;
  logic din;
  logic dout;
  logic clk;


endinterface
