module skip(
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
30'b111100000000000000000010001111,
30'b111000000000000000001111100111,
30'b111000000000000000011101110111,
30'b111000000000000000011100110111,
30'b111000000000000000110110110111,
30'b111000000000000000110011110111,
30'b111000000000000000011001110111,
30'b111000111110000000011111100111,
30'b111001111111110000001111000111,
30'b111011111111111100000000000111,
30'b111111111111111111000000000111,
30'b111111111111111111100000000111,
30'b111111111111111111111000000111,
30'b111111111111100001111000000111,
30'b111111111110000000011100000111,
30'b111111111100001100001110000111,
30'b111111111000011111000111000111,
30'b111111111000011111100111000111,
30'b111111110000001111110011100111,
30'b111111110011000111110011100111,
30'b111011110011100011110011110111,
30'b111011110011110001110011110111,
30'b111001110011111000110011111111,
30'b111001110011111100010011111111,
30'b111000111001111110000111111111,
30'b111000111000111110000111111111,
30'b111000011100011110001111111111,
30'b111000001110000000011111111111,
30'b111000001111100000111111111111,
30'b111000000111111111111111111111,
30'b111000000011111111111111111111,
30'b111000000000111111111111111111,
30'b111000000000011111111111111111,
30'b111000111000000111111111110111,
30'b111001111110000000111111000111,
30'b111011100110000000000000000111,
30'b111011110011000000000000000111,
30'b111011011011000000000000000111,
30'b111011011111000000000000000111,
30'b111011101110000000000000000111,
30'b111001111110000000000000000111,
30'b111100111000000000000000000111,
30'b111110000000000000000000001111,
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