module test;
  reg A,B,Cin;
  wire sum,carry;
  full_adder FA(A,B,Cin,sum,carry);
  
  initial begin
  $monitor("A=%b B=%b Cin=%b sum=%b carry=%b", A,B,Cin,sum,carry);
    
    $dumpfile("dump.vcd");
    $dumpvars(0,test);
    
    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;
    
    $finish;

end

endmodule
