module PriorityMatrixChecker (
    input wire clk,               // Clock input
    input wire reset,             // Reset input
    input wire [1:0] matrix_size,
    input wire [1:0] priority_start_x,
    input wire [1:0] priority_start_y,
    input wire [1:0] priority_end_x,
    input wire [1:0] priority_end_y,
    input wire [1:0] point1_x,
    input wire [1:0] point1_y,
    input wire [1:0] point2_x,
    input wire [1:0] point2_y,
    output wire [1:0] output_point1_x,
    output wire [1:0] output_point1_y,
    output wire [1:0] output_point2_x,
    output wire [1:0] output_point2_y
);

reg [1:0] output_point1_x_reg;
reg [1:0] output_point1_y_reg;
reg [1:0] output_point2_x_reg;
reg [1:0] output_point2_y_reg;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        output_point1_x_reg <= 2'b00;
        output_point1_y_reg <= 2'b00;
        output_point2_x_reg <= 2'b00;
        output_point2_y_reg <= 2'b00;
    end else begin
        if ((point1_x >= priority_start_x) && (point1_x <= priority_end_x) &&
            (point1_y >= priority_start_y) && (point1_y <= priority_end_y)) begin
            output_point1_x_reg <= point1_x;
            output_point1_y_reg <= point1_y;
            output_point2_x_reg <= point2_x;
            output_point2_y_reg <= point2_y;
        end else begin
            output_point1_x_reg <= point2_x;
            output_point1_y_reg <= point2_y;
            output_point2_x_reg <= point1_x;
            output_point2_y_reg <= point1_y;
        end
    end
end

assign output_point1_x = output_point1_x_reg;
assign output_point1_y = output_point1_y_reg;
assign output_point2_x = output_point2_x_reg;
assign output_point2_y = output_point2_y_reg;

endmodule
