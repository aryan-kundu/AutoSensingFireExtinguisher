module PriorityMatrixChecker_TB;

reg clk;
reg reset;
reg [1:0] matrix_size;
reg [1:0] priority_start_x;
reg [1:0] priority_start_y;
reg [1:0] priority_end_x;
reg [1:0] priority_end_y;
reg [1:0] point1_x;
reg [1:0] point1_y;
reg [1:0] point2_x;
reg [1:0] point2_y;
wire [1:0] output_point1_x;
wire [1:0] output_point1_y;
wire [1:0] output_point2_x;
wire [1:0] output_point2_y;

// Instantiate the PriorityMatrixChecker module
PriorityMatrixChecker DUT (
    .clk(clk),
    .reset(reset),
    .matrix_size(matrix_size),
    .priority_start_x(priority_start_x),
    .priority_start_y(priority_start_y),
    .priority_end_x(priority_end_x),
    .priority_end_y(priority_end_y),
    .point1_x(point1_x),
    .point1_y(point1_y),
    .point2_x(point2_x),
    .point2_y(point2_y),
    .output_point1_x(output_point1_x),
    .output_point1_y(output_point1_y),
    .output_point2_x(output_point2_x),
    .output_point2_y(output_point2_y)
);

initial begin
    clk = 0;
    reset = 0;
    matrix_size = 2'b11; // n = 3 (3x3 matrix)

    // Test Case 1: Point1 and Point2 are inside the priority submatrix
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)
    priority_start_y = 2'b00;
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)
    priority_end_y = 2'b01;
    point1_x = 2'b01; // Inside the priority submatrix
    point1_y = 2'b01;
    point2_x = 2'b10; // Inside the priority submatrix
    point2_y = 2'b10;

    // Apply clock signals and wait for a few clock cycles
    #10;
    clk = 1;
    #10;
    clk = 0;

    // Display results for Test Case 1
    $display("Test Case 1:");
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);

    // Test Case 2: Point1 is inside the priority submatrix, Point2 is outside
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)
    priority_start_y = 2'b00;
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)
    priority_end_y = 2'b01;
    point1_x = 2'b01; // Inside the priority submatrix
    point1_y = 2'b01;
    point2_x = 2'b11; // Outside the priority submatrix
    point2_y = 2'b10;

    #10;
    clk = 1;
    #10;
    clk = 0;

    $display("Test Case 2:");
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);

    // Test Case 3: Point1 is outside the priority submatrix, Point2 is inside
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)
    priority_start_y = 2'b00;
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)
    priority_end_y = 2'b01;
    point1_x = 2'b11; // Outside the priority submatrix
    point1_y = 2'b00;
    point2_x = 2'b00; // Inside the priority submatrix
    point2_y = 2'b01;

    #10;
    clk = 1;
    #10;
    clk = 0;

    $display("Test Case 3:");
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);
    
    // Test Case 4: Point1 and Point2 are outside the priority submatrix
    priority_start_x = 2'b00; // Priority submatrix start at (0,0)
    priority_start_y = 2'b00;
    priority_end_x = 2'b01; // Priority submatrix end at (1,1)
    priority_end_y = 2'b01;
    point1_x = 2'b11; // Outside the priority submatrix
    point1_y = 2'b11;
    point2_x = 2'b10; // Outside the priority submatrix
    point2_y = 2'b11;

    #10;
    clk = 1;
    #10;
    clk = 0;

    $display("Test Case 4:");
    $display("Point1 (x, y): (%b, %b), Point2 (x, y): (%b, %b)", point1_x, point1_y, point2_x, point2_y);
    $display("Output Point1 (x, y): (%b, %b), Output Point2 (x, y): (%b, %b)", output_point1_x, output_point1_y, output_point2_x, output_point2_y);
end

endmodule
