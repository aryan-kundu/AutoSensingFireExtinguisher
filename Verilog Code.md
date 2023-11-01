VERILOG CODE:<br>
<br>
1.module PriorityMatrixChecker (<br>
    input wire clk,               // Clock input<br>
    input wire reset,             // Reset input<br>
    input wire [1:0] matrix_size,<br>
    input wire [1:0] priority_start_x,<br>
    input wire [1:0] priority_start_y,<br>
    input wire [1:0] priority_end_x,<br>
    input wire [1:0] priority_end_y,<br>
    input wire [1:0] point1_x,<br>
    input wire [1:0] point1_y,<br>
    input wire [1:0] point2_x,<br>
    input wire [1:0] point2_y,<br>
    output wire [1:0] output_point1_x,<br>
    output wire [1:0] output_point1_y,<br>
    output wire [1:0] output_point2_x,<br>
    output wire [1:0] output_point2_y<br>
);<br>
<br>
reg [1:0] output_point1_x_reg;<br>
reg [1:0] output_point1_y_reg;<br>
reg [1:0] output_point2_x_reg;<br>
reg [1:0] output_point2_y_reg;<br>
<br>
always @(posedge clk or posedge reset) begin<br>
    if (reset) begin<br>
        output_point1_x_reg <= 2'b00;<br>
        output_point1_y_reg <= 2'b00;<br>
        output_point2_x_reg <= 2'b00;<br>
        output_point2_y_reg <= 2'b00;<br>
    end else begin<br>
        if ((point1_x >= priority_start_x) && (point1_x <= priority_end_x) &&<br>
            (point1_y >= priority_start_y) && (point1_y <= priority_end_y)) begin<br>
            output_point1_x_reg <= point1_x;<br>
            output_point1_y_reg <= point1_y;<br>
            output_point2_x_reg <= point2_x;<br>
            output_point2_y_reg <= point2_y;<br>
        end else begin<br>
            output_point1_x_reg <= point2_x;<br>
            output_point1_y_reg <= point2_y;<br>
            output_point2_x_reg <= point1_x;<br>
            output_point2_y_reg <= point1_y;<br>
        end<br>
    end<br>
end<br>
<br>
assign output_point1_x = output_point1_x_reg;<br>
assign output_point1_y = output_point1_y_reg;<br>
assign output_point2_x = output_point2_x_reg;<br>
assign output_point2_y = output_point2_y_reg;<br>
<br>
endmodule<br>
<br>
<br>
<br>
<br>
2. Test bench file:<br>
<br>
module PriorityMatrixChecker_TB;<br>
<br>
reg clk;<br>
reg reset;<br>
reg [1:0] matrix_size;<br>
reg [1:0] priority_start_x;<br>
reg [1:0] priority_start_y;<br>
reg [1:0] priority_end_x;<br>
reg [1:0] priority_end_y;<br>
reg [1:0] point1_x;<br>
reg [1:0] point1_y;<br>
reg [1:0] point2_x;<br>
reg [1:0] point2_y;<br>
wire [1:0] output_point1_x;<br>
wire [1:0] output_point1_y;<br>
wire [1:0] output_point2_x;<br>
wire [1:0] output_point2_y;<br>
<br>
// Instantiate the PriorityMatrixChecker module<br>
PriorityMatrixChecker DUT (<br>
    .clk(clk),<br>
    .reset(reset),<br>
    .matrix_size(matrix_size),<br>
    .priority_start_x(priority_start_x),<br>
    .priority_start_y(priority_start_y),<br>
    .priority_end_x(priority_end_x),<br>
    .priority_end_y(priority_end_y),<br>
    .point1_x(point1_x),<br>
    .point1_y(point1_y),<br>
    .point2_x(point2_x),<br>
    .point2_y(point2_y),<br>
    .output_point1_x(output_point1_x),<br>
    .output_point1_y(output_point1_y),<br>
    .output_point2_x(output_point2_x),<br>
    .output_point2_y(output_point2_y)<br>
);<br>
<br>
initial begin<br>
    clk = 0;<br>
    reset = 0;<br>
    matrix_size = 2'b11; // n = 3 (3x3 matrix)<br>
<br>
    Test Case 1: Point1 and Point2 are inside the priority submatrix<br>
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)<br>
    priority_start_y = 2'b00;<br>
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)<br>
    priority_end_y = 2'b01;<br>
    point1_x = 2'b01; // Inside the priority submatrix<br>
    point1_y = 2'b01;<br>
    point2_x = 2'b10; // Inside the priority submatrix<br>
    point2_y = 2'b10;<br>
<br>
    // Apply clock signals and wait for a few clock cycles<br>
    #10;<br>
    clk = 1;<br>
    #10;<br>
    clk = 0;<br>
<br>
    // Display results for Test Case 1<br>
    $display("Test Case 1:");<br>
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);<br>
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);<br>
<br>
    // Test Case 2: Point1 is inside the priority submatrix, Point2 is outside<br>
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)<br>
    priority_start_y = 2'b00;<br>
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)<br>
    priority_end_y = 2'b01;<br>
    point1_x = 2'b01; // Inside the priority submatrix<br>
    point1_y = 2'b01;<br>
    point2_x = 2'b11; // Outside the priority submatrix<br>
    point2_y = 2'b10;<br>
<br>
    #10;<br>
    clk = 1;<br>
    #10;<br>
    clk = 0;<br>
<br>
    $display("Test Case 2:");<br>
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);<br>
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);<br>
<br>
    // Test Case 3: Point1 is outside the priority submatrix, Point2 is inside<br>
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)<br>
    priority_start_y = 2'b00;<br>
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)<br>
    priority_end_y = 2'b01;<br>
    point1_x = 2'b11; // Outside the priority submatrix<br>
    point1_y = 2'b00;<br>
    point2_x = 2'b00; // Inside the priority submatrix<br>
    point2_y = 2'b01;<br>
<br>
    #10;<br>
    clk = 1;<br>
    #10;<br>
    clk = 0;<br>
<br>
    $display("Test Case 3:");<br>
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);<br>
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);<br>
    <br>
    // Test Case 4: Point1 and Point2 are outside the priority submatrix<br>
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)<br>
    priority_start_y = 2'b00;<br>
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)<br>
    priority_end_y = 2'b01;<br>
    point1_x = 2'b11; // Outside the priority submatrix<br>
    point1_y = 2'b11;<br>
    point2_x = 2'b10; // Outside the priority submatrix<br>
    point2_y = 2'b11;<br>
<br>
    #10;<br>
    clk = 1;<br>
    #10;<br>
    clk = 0;<br>
<br>
   <br> $display("Test Case 4:");<br>
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);<br>
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);<br>
end<br>
<br>
endmodule<br>
<br><br>

<br>
<br>
<br>
OUTPUT:<br>

![Uploading image.png…]()
