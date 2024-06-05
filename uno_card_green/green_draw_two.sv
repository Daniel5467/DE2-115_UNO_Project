module green_draw_two(
	input [9:0] x_cnt,
	input [9:0] y_cnt,
	input [9:0] x_pin,
	input [9:0] y_pin,
	output [7:0] r_data,
	output [7:0] g_data,
	output [7:0] b_data
);
localparam X_WIDTH = 30;
localparam Y_WIDTH = 50;
localparam [0:149][239:0] picture = {
	240'b111011111111001111101001101001011010001010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101011111001111010101000111001101111001011101111,
	240'b111100011101110010111101110111101111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010011010110101110011110010011110001,
	240'b111001101011100111110010111111111111111111111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111011111111111111111111001111011101011101100,
	240'b101110001110000011111111111001101001100010000011100001001000010010000100100001001000010010000100100001001000010010000100100001001000010010000100100000010111111001111111100000111000010010000011100001001010010011110001111111111101001010110110,
	240'b101001011111110011110111100000000100110101010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001001110011001101001001010000010010100110100111101010000010100000100111010011000111111101111000110011101,
	240'b101100001111111111011011010110010101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101110111000101111011111111000101011000101010001010100010101010101001001101000111011111111110110110000,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000010110010110111110110110010011011111101010110111001010010010101000101001001100101111010001111111010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000111000110110000100100101101011111101010110110101001010010101101000111101001011110111010001111111010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000110011001111100011000010101001111010100000101110110010011111100101011110010000010111001111111111010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010110101011111111001110011111010100110110101011101101111111101111100110111100111001001111111010110100,
	240'b101100111111111111010010010110000101010001010010010100000101000001010000010100000101000001010001010100110101010101010101010101010101010001101100011010001001101111110000101111110110000101101100111010111010000101101011111001111111111010110100,
	240'b101100111111111111010010010110000101000001101110101000111011100110110101101010011001001101111001011000000101001001010001010101000101000111000110111001011011111111101011111111110111110001010001100011000110100101100001111010001111111010110011,
	240'b101100111111111111010010010101101000111111101011111111111111111111111111111111111111111111111001110111111011011001111111010110010100111010100100110100111101010011010001110011000111000101010010010100000101000101100101111010001111111010110011,
	240'b101100111111111111001110100001001111010011111111111111111111111111111111111111111111111111111111111111111111111111111001110011111000001001010100010100100101010101010101010101010101010101010101010101010101001101100101111010001111111010110011,
	240'b101100111111111111010101110100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100010110110011000100101000001010100010101000101010101010101010101010101001101100101111010001111111010110011,
	240'b101100111111111111100110111101011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110000111010001010001010101010101010101010101010101010101001101100101111010001111111010110011,
	240'b101100111111111111101111111110101111111111111111111111111110110111001110110100001101000111010001110100011101001111110000111111111111111111111111111111111110100101111110010100000101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111110000111110101111111111111111111111111011111011011010111001001101111011011101111000001110001011000101111101101111111111111111111111111111111111101011011111000101000001010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111101100111110011111111111111111111111111100101111110010101011100111100001111001011111111100011111011110110110111111111111111111111111111111111111111111111001000110110001010001010101010101001101100101111010001111111010110100,
	240'b101100111111111111100110111101101111111111111111111111111101101111011010011111110100110101010001010011100110011111011001110100011111111111111111111111111111111111111111111111111100110001011010010100110101001101100101111010001111111010110100,
	240'b101100111111111111011110111010011111111111111111111111111110110111010001101000100101000001010101010101000101010111000111101111011101010011010111110110101111100011111111111111111111111110011111010100010101001101100101111010001111111010110100,
	240'b101100111111111111010100110100111111111111111111111111111111101011001011110001010101010001010101010101010101000010100110110001111100010111011100110110101100100011111100111111111111111111101100011011000100111101100101111010001111111010110100,
	240'b101100111111111111001101101100101111111111111111111111111111111111001110110101110110010101010011010101010101000110000010110101000111110110001111110111001101001011101000111111111111111111111111101101000101000001100100111010001111111010110011,
	240'b101100111111111111001101100010101111110111111111111111111111111111011101110110011000000101010001010101010101001101100100110110100110011001001001011111011101110011011000111111111111111111111111111011100110100101100010111010001111111010110011,
	240'b101100111111111111010000011001111110011011111111111111111111111111101101110100011010011101010000010101010101010101010100110010001000111001001100010111111101010011001100111111111111111111111111111111111010000001100000111010001111111010110011,
	240'b101100111111111111010010010101011011011011111111111111111111111111111100110010101100011101010101010101000101010101010000101001011011001101001101010100101011110011001101111101111111111111111111111111111101001101101001111001111111111010110011,
	240'b101100111111111111010010010101000111100111111000111111111111111111111111110100001101101101101011010011010101000001001011100000011101011101010101010011111001100011010100111010001111111111111111111111111111010010000011111001001111111010110011,
	240'b101100111111111111010010010110000101010111000101111111111111111111111111110111001101110011010101100110001001010110010100110000111111011101101010010011100111011011011010110101101111111111111111111111111111111010100110111000101111111010110100,
	240'b101100111111111111010010010110000101000001111001111101101111111111111111111110001100011111011010110110011101011111010110110101101100011101100010010100010101110011010011110011001111111111111111111111111111111111000111111001011111111010110100,
	240'b101100111111111111010010010110000101010001010010101011111111111111111111111111111111011011011100110110111101001110110010101000010100110001010010010101010101001010111000110011001111011111111111111111111111111111100000111010101111110110110100,
	240'b101100111111111111010010010110000101010001010011011000011101101011111111111111111111111111111111111111111111111111001110110100110101101101001111010100010100101110011000110101011110011011111111111111111111111111110001111011101111110110110100,
	240'b101100111111111111010010010110000101010001010101010100010111011011101101111111111111111111111111111111111111111111010001111001101011111010001011100010111000101011001001111010111101001111111111111111111111111111110101111100101111110010110100,
	240'b101100111111111111010010010110000101010001010101010101010101000110000111111100101111111111111111111111111111111111101111110001011101111011011011110110111101101111011111110010111100101111111111111111111111111111110111111101001111110010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010001100010101110111011111111111111111111111111111111111011011101110011011110110111101101111011011110110110101111011111111111111111111111111111110111111100111111110010110011,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010100000111110111100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101101111011011111110110110011,
	240'b101100111111111111010010010110000101010001010101010101010101010101010100010101000101000001100110101101101111100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111100111001011111111010110011,
	240'b101100111111111111010010010110000101010001010101010101010101011101011010010110100101101001010111010101111000000011001010111110011111111111111111111111111111111111111111111111111111111111111111111111111101111001110111111001011111111010110011,
	240'b101100111111111111010010010110000101000101010001010100011000100011011011110111001101111111011110100101100100110001011000011111101011011111011111111110001111111111111111111111111111111111111111110110010111010001100001111010001111111010110100,
	240'b101100111111111111010010010101000111110010001010010011001001011111111111110110111011000111100111101001100100111101010100010100010101001001100000011101101000111110100100101011011010110110001110011000000100111101100101111010001111111010110100,
	240'b101100111111111111010010011001111100000011011001011001110110100111001001111011001001001101100101011000010101010001010101010101010101010101010011010100010101000001010000010011110100111101010000010100110101001101100101111010001111111010110100,
	240'b101100111111111111010011110011001111110111111110110111100101101101010111101010001111011010100101010101000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111010010011110001100110011100000011111010101100001010010010100011001001011110011100000110101000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111010010010100101000101010011101010011000111111110101111010101010101001111011011101010010100111101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111010010010110000101001001010011010100011000001111111000100011011000001011110000100100100101000001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100100111010001111111010110100,
	240'b101011111111111111011100010110100101001101010101010101000101100110111100111110011111100111001010010111100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101101001111100001111110110101110,
	240'b101001001111101111111001100001110100110101001111010100000100111001010110011111011000000101011001010011100101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010011110100111110011111111111101110111110011100,
	240'b101110101101110111111111111011001010010010001110100011111000111110001110100010111000101010001110100011111000111110001111100011111000111110001111100011111000111110001111100011111000111110001111100011101010111111110101111111111101000010111001,
	240'b111010001011100011101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000101011101111101101,
	240'b111110011110011110111011110101111111000111111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111110111110110111010010110000001110111011111000,
	240'b111111111111111111100000100110111001100110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001001001011010101011111101101111111111111111,
	240'b111011111111001111101001101001011010001010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101011111001111010101000111001101111001011101111,
	240'b111100011101110010111101110111101111011111111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111010011010110101110011110010011110001,
	240'b111001101011100111110010111111111111111111111110111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111101111111111111111111001111011101011101100,
	240'b101110001110000011111111111100101100110011000001110000011100000111000001110000011100000111000001110000011100000111000001110000011100000111000001110000001011111010111111110000011100000111000001110000011101000111111000111111111101001010110110,
	240'b101001011111101111111011101111111010011010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010100110101100111100100111000001101010011010011110101000101001111010011011001011111111111111000110011101,
	240'b101100001111111111101100101011001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110110111111100011111101111111100110101101010101010101010101010101010100010110011111101111111110010110000,
	240'b101100111111111111101001101011001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100011011000111011111011010111001101111110101011011010101000101010011010100110110010111101001111110010110100,
	240'b101100111111111111101001101011001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100011100011111000011010010110101111110101011011010010101001110110101011110110101110111101001111110010110100,
	240'b101100111111111111101001101011001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100011001100111110001100001010100111101010001010111011001001111110011101110111000000111100111111110010110100,
	240'b101100111111111111101001101011001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010110101111111100111001111101010011011010011110110111111101111110011011101111100101111110010110100,
	240'b101100111111111111101001101011001010100110101001101010001010100010101000101010001010100010101000101010011010101010101010101010101010101010110110101100111100110111110111110111111011000010110101111101101101000010110100111101001111110010110100,
	240'b101100111111111111101001101011001010100010110110110100011101110011011010110101001100100110111100101100001010100010101000101010011010100011100011111100101101111111110101111111111011110110101000110001101011010010110000111101001111110110110011,
	240'b101100111111111111101001101010101100011111110101111111111111111111111111111111111111111111111100111011111101101110111111101011001010011011010010111010011110101011101000111001011011100010101000101010001010100010110010111101001111110110110011,
	240'b101100111111111111100111110000011111101011111111111111111111111111111111111111111111111111111111111111111111111111111100111001111100000110101001101010011010101010101010101010101010101010101010101010101010100110110010111101001111110110110011,
	240'b101100111111111111101010111010001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011011010101100001010100010101010101010101010101010101010101010101010100110110010111101001111110110110011,
	240'b101100111111111111110010111110101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011001011101010101000101010101010101010101010101010101010100110110010111101001111110110110011,
	240'b101100111111111111110111111111001111111111111111111111111110110111001110110100001101000111010001110100001101001111110000111111111111111111111111111111111111010010111111101010001010101010101010101010101010100110110010111101001111110010110100,
	240'b101100111111111111110111111111001111111111111111111111111011111011011001111001011110000111100001111000101110000011000101111101101111111111111111111111111111111111110101101111011010100010101010101010101010100110110010111101001111110010110100,
	240'b101100111111111111110101111111001111111111111111111111111100101111110011110110011011110110111101110000011110011011011101110110111111111111111111111111111111111111111111111100011011011010101000101010101010100110110010111101001111110010110100,
	240'b101100111111111111110010111110101111111111111111111111111101101011011100110000001010011010101000101001111011010011100011110011111111111111111111111111111111111111111111111111111110010110101101101010011010100110110010111101001111110010110100,
	240'b101100111111111111101110111101001111111111111111111111111110110111001111110100101010011110101010101010101010101011100011101110101101001111010110110110101111100011111111111111111111111111001111101010001010100110110010111101001111110010110100,
	240'b101100111111111111101010111010011111111111111111111111111111101011001001111000001010101010101010101010101010011111010100110001011100011111011101110110011100100011111100111111111111111111110110101101101010011110110010111101001111110010110100,
	240'b101100111111111111100110110110011111111111111111111111111111111111001100111000111011001110101001101010101010100011000010110110001010111011001010111100011101000011101000111111111111111111111111110110101010011110110010111101001111110110110011,
	240'b101100111111111111100110110001011111111011111111111111111111111111011101110110111100001010101000101010101010100110110010111001101001100010100110101111111101111111010111111111111111111111111111111101111011010010110000111101001111110110110011,
	240'b101100111111111111101000101100111111001011111111111111111111111111101101110011111101010010100111101010101010101010101010111000101010101010100011101100001110010011001010111111111111111111111111111111111100111110101111111101001111110110110011,
	240'b101100111111111111101000101010101101101011111111111111111111111111111100110001111110000110101010101010101010101010101000110101001100000010011101101010101101110111001010111101111111111111111111111111111110100110110100111100111111110110110011,
	240'b101100111111111111101001101010101011110011111100111111111111111111111111110011111110010010110110101001101010100010100101110000101101110010010111101010011100110111010011111010001111111111111111111111111111101011000001111100101111110110110011,
	240'b101100111111111111101001101010111010101011100010111111111111111111111111110111001101101111101101110011011100110011001100111001001111010110011011101001111011110011011111110101011111111111111111111111111111111111010010111100011111110010110100,
	240'b101100111111111111101001101011001010011110111100111110101111111111111111111110001100011111011000110110011101011111010110110110001100101010010100101010011010111011100100110010101111111111111111111111111111111111100011111100101111110010110100,
	240'b101100111111111111101001101011001010100110101001110101111111111111111111111111111111011011011100110110111101001110101111101111101001001110100100101010111010100011011011110010011111011111111111111111111111111111110000111101001111110010110100,
	240'b101100111111111111101001101011001010100110101001101100001110110011111111111111111111111111111111111111111111111111001100111001111010111110101000101010001010010111001101110101001110011011111111111111111111111111111000111101111111110010110100,
	240'b101100111111111111101001101011001010100110101010101010001011101111110110111111111111111111111111111111111111111111010001111001111110000111000110110001101100011011100111111010101101001111111111111111111111111111111010111110011111110010110100,
	240'b101100111111111111101001101011001010100110101010101010101010100011000011111110011111111111111111111111111111111111101111110001011101110111011100110111001101110011011110110010111100101111111111111111111111111111111011111110101111110010110100,
	240'b101100111111111111101001101011001010100110101010101010101010101010101000110001001111011111111111111111111111111111111111111011011101110011011110110111101101111011011110110110101111011111111111111111111111111111111011111110101111110010110011,
	240'b101100111111111111101001101011001010100110101010101010101010101010101010101010001011110111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110111101101111110010110011,
	240'b101100111111111111101001101011001010100110101010101010101010101010101001101010011010011110110010110110101111110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011110111100101111110010110011,
	240'b101100111111111111101001101011001010100110101010101010101010101110101100101011001010110010101011101010111100000011100100111111001111111111111111111111111111111111111111111111111111111111111111111111111110111010111011111100101111110110110011,
	240'b101100111111111111101001101011001010011110101000101010001100001111101101111011011110111111101110110010101010010110101100101111111101101111101111111111001111111111111111111111111111111111111111111011001011101010110000111101001111110110110100,
	240'b101100111111111111101001101010101011111011000101101001101100101011111111111011011101100011110011110100101010011110101001101010001010100010110000101110101100011111010001110101101101011011000110101011111010011110110010111101001111110010110100,
	240'b101100111111111111101000101100111110000011101100101100111011010011100100111101011100100110110010101100001010101010101010101010101010101010101001101010001010100010100111101001111010011110101000101010011010100110110010111101001111110010110100,
	240'b101100111111111111101001111001101111111011111110111011101010110110101011110100111111101011010010101010011010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110110010111101001111110010110100,
	240'b101100111111111111101000101110111110011011110000101111101010101110101001101010001100100011111001110000011010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110110010111101001111110010110100,
	240'b101100111111111111101000101010001100010111001110101001101011111111010111101010101010100111101101110101001010011110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110110010111101001111110010110100,
	240'b101100111111111111101001101011001010100010101001101010001100000111111011110001101100000011111000110010011010011110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110110010111101001111110010110100,
	240'b101011111111111111101110101011011010100110101010101010101010110011011110111111001111110011100100101011111010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100010110100111110001111110010101110,
	240'b101001001111101011111100110000111010011010100111101001111010011110101010101111101100000010101100101001101010011110100111101001111010011110100111101001111010011110100111101001111010011110100111101001111010011111001111111111111110111110011100,
	240'b101110101101110111111111111101011101000111000110110001111100011111000110110001011100010111000110110001111100011111000111110001111100011111000111110001111100011111000111110001111100011111000111110001111101011111111010111111111101000010111001,
	240'b111010001011100011101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000101011101111101101,
	240'b111110011110011110111011110101111111000111111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111110111110110111010010110000001110111011111000,
	240'b111111111111111111100000100110111001100110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001001001011010101011111101101111111111111111,
	240'b111011111111001111101001101001011010001010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101100001011000010110000101011111001111010101000111001101111001011101111,
	240'b111100011101110010111101110111101111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010011010110101110011110010011110001,
	240'b111001101011100111110010111111111111111111111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111011111111111111111111001111011101011101100,
	240'b101110001110000011111111111001101001100010000011100001001000010010000100100001001000010010000100100001001000010010000100100001001000010010000100100000010111111001111111100000111000010010000011100001001010010011110001111111111101001010110110,
	240'b101001011111110011110111100000000100110101010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001001110011001101001001010000010010100110100111101010000010100000100111010011000111111101111000110011101,
	240'b101100001111111111011011010110010101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101110111000101111011111111000101011000101010001010100010101010101001001101000111011111111110110110000,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000010110010110111110110110010011011111101010110111001010010010101000101001001100101111010001111111010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000111000110110000100100101101011111101010110110101001010010101101000111101001011110111010001111111010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000110011001111100011000010101001111010100000101110110010011111100101011110010000010111001111111111010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010110101011111111001110011111010100110110101011101101111111101111100110111100111001001111111010110100,
	240'b101100111111111111010010010110000101010001010010010100000101000001010000010100000101000001010001010100110101010101010101010101010101010001101100011010001001101111110000101111110110000101101100111010111010000101101011111001111111111010110100,
	240'b101100111111111111010010010110000101000001101110101000111011100110110101101010011001001101111001011000000101001001010001010101000101000111000110111001011011111111101011111111110111110001010001100011000110100101100001111010001111111010110011,
	240'b101100111111111111010010010101101000111111101011111111111111111111111111111111111111111111111001110111111011011001111111010110010100111010100100110100111101010011010001110011000111000101010010010100000101000101100101111010001111111010110011,
	240'b101100111111111111001110100001001111010011111111111111111111111111111111111111111111111111111111111111111111111111111001110011111000001001010100010100100101010101010101010101010101010101010101010101010101001101100101111010001111111010110011,
	240'b101100111111111111010101110100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100010110110011000100101000001010100010101000101010101010101010101010101001101100101111010001111111010110011,
	240'b101100111111111111100110111101011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110000111010001010001010101010101010101010101010101010101001101100101111010001111111010110011,
	240'b101100111111111111101111111110101111111111111111111111111110110111001110110100001101000111010001110100011101001111110000111111111111111111111111111111111110100101111110010100000101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111110000111110101111111111111111111111111011111011011010111001001101111011011101111000001110001011000101111101101111111111111111111111111111111111101011011111000101000001010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111101100111110011111111111111111111111111100101111110010101011100111100001111001011111111100011111011110110110111111111111111111111111111111111111111111111001000110110001010001010101010101001101100101111010001111111010110100,
	240'b101100111111111111100110111101101111111111111111111111111101101111011010011111110100110101010001010011100110011111011001110100011111111111111111111111111111111111111111111111111100110001011010010100110101001101100101111010001111111010110100,
	240'b101100111111111111011110111010011111111111111111111111111110110111010001101000100101000001010101010101000101010111000111101111011101010011010111110110101111100011111111111111111111111110011111010100010101001101100101111010001111111010110100,
	240'b101100111111111111010100110100111111111111111111111111111111101011001011110001010101010001010101010101010101000010100110110001111100010111011100110110101100100011111100111111111111111111101100011011000100111101100101111010001111111010110100,
	240'b101100111111111111001101101100101111111111111111111111111111111111001110110101110110010101010011010101010101000110000010110101000111110110001111110111001101001011101000111111111111111111111111101101000101000001100100111010001111111010110011,
	240'b101100111111111111001101100010101111110111111111111111111111111111011101110110011000000101010001010101010101001101100100110110100110011001001001011111011101110011011000111111111111111111111111111011100110100101100010111010001111111010110011,
	240'b101100111111111111010000011001111110011011111111111111111111111111101101110100011010011101010000010101010101010101010100110010001000111001001100010111111101010011001100111111111111111111111111111111111010000001100000111010001111111010110011,
	240'b101100111111111111010010010101011011011011111111111111111111111111111100110010101100011101010101010101000101010101010000101001011011001101001101010100101011110011001101111101111111111111111111111111111101001101101001111001111111111010110011,
	240'b101100111111111111010010010101000111100111111000111111111111111111111111110100001101101101101011010011010101000001001011100000011101011101010101010011111001100011010100111010001111111111111111111111111111010010000011111001001111111010110011,
	240'b101100111111111111010010010110000101010111000101111111111111111111111111110111001101110011010101100110001001010110010100110000111111011101101010010011100111011011011010110101101111111111111111111111111111111010100110111000101111111010110100,
	240'b101100111111111111010010010110000101000001111001111101101111111111111111111110001100011111011010110110011101011111010110110101101100011101100010010100010101110011010011110011001111111111111111111111111111111111000111111001011111111010110100,
	240'b101100111111111111010010010110000101010001010010101011111111111111111111111111111111011011011100110110111101001110110010101000010100110001010010010101010101001010111000110011001111011111111111111111111111111111100000111010101111110110110100,
	240'b101100111111111111010010010110000101010001010011011000011101101011111111111111111111111111111111111111111111111111001110110100110101101101001111010100010100101110011000110101011110011011111111111111111111111111110001111011101111110110110100,
	240'b101100111111111111010010010110000101010001010101010100010111011011101101111111111111111111111111111111111111111111010001111001101011111010001011100010111000101011001001111010111101001111111111111111111111111111110101111100101111110010110100,
	240'b101100111111111111010010010110000101010001010101010101010101000110000111111100101111111111111111111111111111111111101111110001011101111011011011110110111101101111011111110010111100101111111111111111111111111111110111111101001111110010110100,
	240'b101100111111111111010010010110000101010001010101010101010101010101010001100010101110111011111111111111111111111111111111111011011101110011011110110111101101111011011110110110101111011111111111111111111111111111110111111100111111110010110011,
	240'b101100111111111111010010010110000101010001010101010101010101010101010101010100000111110111100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101101111011011111110110110011,
	240'b101100111111111111010010010110000101010001010101010101010101010101010100010101000101000001100110101101101111100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111100111001011111111010110011,
	240'b101100111111111111010010010110000101010001010101010101010101011101011010010110100101101001010111010101111000000011001010111110011111111111111111111111111111111111111111111111111111111111111111111111111101111001110111111001011111111010110011,
	240'b101100111111111111010010010110000101000101010001010100011000100011011011110111001101111111011110100101100100110001011000011111101011011111011111111110001111111111111111111111111111111111111111110110010111010001100001111010001111111010110100,
	240'b101100111111111111010010010101000111110010001010010011001001011111111111110110111011000111100111101001100100111101010100010100010101001001100000011101101000111110100100101011011010110110001110011000000100111101100101111010001111111010110100,
	240'b101100111111111111010010011001111100000011011001011001110110100111001001111011001001001101100101011000010101010001010101010101010101010101010011010100010101000001010000010011110100111101010000010100110101001101100101111010001111111010110100,
	240'b101100111111111111010011110011001111110111111110110111100101101101010111101010001111011010100101010101000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111010010011110001100110011100000011111010101100001010010010100011001001011110011100000110101000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111010010010100101000101010011101010011000111111110101111010101010101001111011011101010010100111101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100101111010001111111010110100,
	240'b101100111111111111010010010110000101001001010011010100011000001111111000100011011000001011110000100100100101000001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100100111010001111111010110100,
	240'b101011111111111111011100010110100101001101010101010101000101100110111100111110011111100111001010010111100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101101001111100001111110110101110,
	240'b101001001111101111111001100001110100110101001111010100000100111001010110011111011000000101011001010011100101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010011110100111110011111111111101110111110011100,
	240'b101110101101110111111111111011001010010010001110100011111000111110001110100010111000101010001110100011111000111110001111100011111000111110001111100011111000111110001111100011111000111110001111100011101010111111110101111111111101000010111001,
	240'b111010001011100011101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000101011101111101101,
	240'b111110011110011110111011110101111111000111111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111110111110110111010010110000001110111011111000,
	240'b111111111111111111100000100110111001100110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001011010010110100101101001001001011010101011111101101111111111111111,
};
always_comb begin
	if((x_pin <= x_cnt && x_cnt <= x_pin + X_WIDTH) && (y_pin <= y_cnt && y_cnt <= y_pin + Y_WIDTH)) begin
		r_data = picture[(y_cnt - y_pin)][(x_cnt - x_pin)<<3 +: 8];
		g_data = picture[(y_cnt - y_pin) + Y_WIDTH][(x_cnt - x_pin)<<3 +: 8];
		b_data = picture[(y_cnt - y_pin) + 2*Y_WIDTH][(x_cnt - x_pin)<<3 +: 8];
	end
	else begin
		r_data = 8'b0;
		g_data = 8'b0;
		b_data = 8'b0;
	end
end
endmodule