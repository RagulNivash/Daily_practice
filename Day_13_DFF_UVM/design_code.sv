module dff(input rst, clk,din, output dout);

  always @(posedge clk) begin
    if(rst==1'b1)
      dout<=1'b0;
    else dout<= din;      
  end
endmodule


///////////////////////////////////////////

interface fif;

logic rst;
  logic din;
  logic dout;
  logic clk;


endinterface



