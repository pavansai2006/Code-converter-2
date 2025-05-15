module bcd_to_7seg(w,x,y,z,a,b,c,d,e,f,g);
  input w,x,y,z;
  output reg a,b,c,d,e,f,g;
  
  always @(*)
    begin
      a=0; b=0; c=0; d=0; e=0; f=0; g=0;
      a = (w | y | ~(x ^ z ));
      b = (~x | ~(y ^ z));
      c = ~y | z | x;
      d = ((y & ~z) | (~x & y) | (~x & ~z) | (x & ~y & z));
      e = ((y & ~z) | (~x & ~z));
      f = (w | (~y & ~z) | (x & ~y) | (x & ~z));
      g = (w | (y & ~z) | (x ^ y));
    end
endmodule
