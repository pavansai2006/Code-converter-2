module testbench;
  reg w,x,y,z;
  wire a,b,c,d,e,f,g;
  
  comparator CUT(w,x,y,z,a,b,c,d,e,f,g);
  
  integer i;
  initial
    begin
      $dumpfile("comparator.vcd");
      $dumpvars(0,testbench);
      for(i=0;i<16;i++)
        begin
          {w,x,y,z} = i; #5;
          $display($time ," W=%b, X=%b, Y=%b, Z=%b, A=%b, B=%b, C=%b, D=%b, E=%b, F=%b, G=%B",w,x,y,z,a,b,c,d,e,f,g);
        end
      #5 $finish;
    end
endmodule
      
