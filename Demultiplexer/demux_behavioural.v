module demux(i,s0,s1,y0,y1,y2,y3);
  input i,s0,s1;
  output reg y0,y1,y2,y3;
  
  always @(i or s0 or s1)
    begin
      if(s1==0 && s0==0)
        begin
          y0=i;
          y1=0;
          y2=0;
          y3=0;
        end
      else if(s1==0 && s0==1)
        begin
          y0=0;
          y1=i;
          y2=0;
          y3=0;
        end
      else if(s1==1 && s0==0)
        begin
          y0=0;
          y1=0;
          y2=i;
          y3=0;
        end
      else if(s1==1 && s0==1)
        begin
          y0=0;
          y1=0;
          y2=0;
          y3=i;
        end
    end
endmodule
