module zero(
	input [9:0] x_cnt,
	input [9:0] y_cnt,
	input [9:0] x_pin,
	input [9:0] y_pin,
    input [1:0] color,
	output [7:0] r_data,
	output [7:0] g_data,
	output [7:0] b_data
);
localparam X_WIDTH = 30;
localparam Y_WIDTH = 50;
localparam [0:49][29:0] picture = {
30'b111111111111111111111111111111,
30'b111111111111111111111111111111,
30'b111111111111111111111111111111,
30'b111110000000000000000000011111,
30'b111100000000000000000001100111,
30'b111000000000000000000011110111,
30'b111000000000000000000110110111,
30'b111000000000000000000110010111,
30'b111000000000000000000110010111,
30'b111000000000000000000110010111,
30'b111000000000000000000110110111,
30'b111000111110000000000111110111,
30'b111011111111111000000011100111,
30'b111011111111111110000000000111,
30'b111111111111111111000000000111,
30'b111111111111111111110000000111,
30'b111111111111111111111000000111,
30'b111111111111110001111100000111,
30'b111111111111000000111110000111,
30'b111111111110000100011110000111,
30'b111111111110011110011111000111,
30'b111111111110011111001111100111,
30'b111111111100111111001111100111,
30'b111111111100111111001111110111,
30'b111011111100111111001111110111,
30'b111011111100111111001111110111,
30'b111001111100111111001111111111,
30'b111001111100111111001111111111,
30'b111001111110111111001111111111,
30'b111000111110011110001111111111,
30'b111000011110001110011111111111,
30'b111000011111000000011111111111,
30'b111000001111100001111111111111,
30'b111000000111111111111111111111,
30'b111000000011111111111111111111,
30'b111000000001111111111111111111,
30'b111000000000011111111111111111,
30'b111000100000000111111111110111,
30'b111011111000000001111111100111,
30'b111011011000000000000000000111,
30'b111011011000000000000000000111,
30'b111011011000000000000000000111,
30'b111011011000000000000000000111,
30'b111011011000000000000000000111,
30'b111011111000000000000000000111,
30'b111001110000000000000000000111,
30'b111100000000000000000000001111,
30'b111111111111111111111111111111,
30'b111111111111111111111111111111,
30'b111111111111111111111111111111
};

always_comb begin
	if((x_pin <= x_cnt && x_cnt <= x_pin + X_WIDTH) && (y_pin <= y_cnt && y_cnt <= y_pin + Y_WIDTH)) begin
		case(color)
            2'b00: begin
                r_data = 8'b11111111;
                g_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
                b_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
            end
            2'b01: begin
                r_data = 8'b11111111;
                if(picture[(y_cnt - y_pin)][(x_cnt - x_pin)])       g_data = 8'b11111111;
                else                                                g_data = 8'b11000000;   
                b_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
            end
            2'b10: begin
                r_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
                if(picture[(y_cnt - y_pin)][(x_cnt - x_pin)])       g_data = 8'b11111111;
                else                                                g_data = 8'b10000000; 
                b_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
            end
            2'b11: begin
                r_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
                g_data = {8{picture[(y_cnt - y_pin)][(x_cnt - x_pin)]}};
                b_data = 8'b11111111;
            end
        endcase
	end
	else begin
		r_data = 8'b0;
		g_data = 8'b0;
		b_data = 8'b0;
	end
end
endmodule