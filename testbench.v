module testbench();

reg A;
reg B;
reg C;

wire[1:0] S;

OneBitAdder myAdder(C, A, B, S[1], S[0]);

initial begin
A=0; B=0; C=0;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=0; B=0; C=1;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=0; B=1; C=0;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=0; B=1; C=1;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=1; B=0; C=0;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=1; B=0; C=1;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=1; B=1; C=0;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
A=1; B=1; C=1;  #10; 
if (S !== A+B+C) begin
           $display("Error adding %d+%d+%d: Should be %d but got %d", A, B, C, A+B+C, S); $stop;
end
$display("All tests passed.");
end

endmodule

