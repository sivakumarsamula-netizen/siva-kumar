module tb;
 
  wire y;
  
  reg i0,i1,i2,i3;
  
  reg s0,s1;
  
  mux4x1 DUT(.y(y),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1));
 

  initial begin
    
    i0 = 1;
    i1 = 0;
    i2 = 1;
    i3 = 0;
   
    s0 = 0;
    s1 = 0;
    
    #1;
    s0 = 1;
    s1 = 0;
    
    #1;
    s0 = 0;
    s1 = 1;
    
    #1;
    
    s0 = 1;
    s1 = 1;
   
    
   
  end
 
  initial begin
    
    $monitor($time,"\ts0 = %0d , s1 = %0d ,i0 = %0d, i1 = %d, i2 = %0d ,i3 = %0d, y = %0d ",s0,s1,i0,i1,i2,i3,y);
  end
  
endmodule
