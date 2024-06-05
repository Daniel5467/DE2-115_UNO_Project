module blue_four(
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
	240'b111111101111010111011010100111111010000010110001101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101011101001110110110100111101111111111111111110,
	240'b111111111101101010111000111001101111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111101011011010101111101111010011111111,
	240'b111100101011110011110110111111111111111011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101111111111111111111111001111100010111111000,
	240'b101111001110010111111111110111101000111001111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111011001110101011110101001111111110000111111111101001010111001,
	240'b100111011111111011110101011110100100110101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100011001000010000100010011100100110110011101111111111110100010011011,
	240'b101010011111111111011000010110010101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100001010000011100001010111100100111101101111111101111111011110101010,
	240'b101100001111111111010001010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000110101011100111100100000100110101101011111100101111110010101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001100000001011101110111000110100000101010001101011111100101111110010101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001111100100001110011101110111111010010111101101101000111100101111110010101111,
	240'b101100001111111111010010010110000101010001010101010101010101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010100101000001110101101110110110101001011101101101001111100011111110010101111,
	240'b101100001111111111010010010110000101010001010010010100000101010001010011010100000101000001010001010100110101010001010101010101010101010101010101010101010101001001100111111010011111111011101111111110001101001101101111111100011111110010101111,
	240'b101100001111111111010010010101110101000101110110101010111100000010111101101100111001110110000001011001000101001101010000010101000101010101010101010101010101010001011001101101001111010010010101100100000111110101101101111100011111110010101111,
	240'b101100001111111111010001010101101001100111110001111111111111111111111111111111111111111111111011111001101100000010001000010110110101000001010100010101010101010101010001011110011011010001010101010011110100111001101100111100101111110010101111,
	240'b101100001111111111001101100010011111100011111111111111111111111111111111111111111111111111111111111111111111111111111100110100101000011101010101010100100101010101010101010101010101010001010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010101110100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010111010011001000101000101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111100111111100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110010111010001010000010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111110011111110011111111111111111111111111111111111111111111111111111111111111111111110111101010111001111111001111111111111111111111111111110100001111110010100000101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111110010111110001111111111111111111111111111111111111111111111111111111111111111111110111000011101001101100001011111101111111111111111111111111111101011011110100101000001010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111101110111101101111111111111111111111111111111111111111111111111111111111111111111111111100011001010011010110001101010011111111111111111111111111111111111000010110100101010010010101010101001001101100111100101111110010101111,
	240'b101100001111111111100110111100101111111111111111111111111111111111111111111111111111111111111111111111111111011001110110010011001001010111111111111111111111111111111111111111111100011101011000010101000101001001101100111100101111110010101111,
	240'b101100001111111111011011111010011111111111111111111111111111111111111111111111111111111111111111111111111111111110110100010011110110001011100100111111111111111111111111111111111111111010011010010100000101001001101100111100101111110010101111,
	240'b101100001111111111010100110100011111111111111111111111111111111111111111111111111111111111111111111111101111111011101011011010000100111010101000111111111111111111111111111111111111111111101000011010000100111101101100111100101111110010101111,
	240'b101100001111111111001101101100011111111111111111111111111111111111111111111111111111111111101101100010010111101011001111101000110100110101101101111100001111111111111111111111111111111111111111101011000100111001101100111100101111110010101111,
	240'b101100001111111111001101100010011111110111111111111111111111111111111111111111111111111111100111011000000100110010111110111000110101111001010001101110111111111111111111111111111111111111111111111010010110001101101001111100101111110010101111,
	240'b101100001111111111010000011001011110010111111111111111111111111111111111111111111111111111101000011001000101000010111101111111111000110101001011011111001111100111111111111111111111111111111111111111111001011001100111111100101111110010101111,
	240'b101100001111111111010010010101001011010111111111111111111111111111111111111111111111111111101000011001000101000010111100111111111100111001010110010101101100111011111111111111111111111111111111111111111100100101101101111100011111110010101111,
	240'b101100001111111111010010010100110111100111111000111111111111111111111111111111111111111111101101011001000101000010111111111111111111111010000001010011001000110111111101111111111111111111111111111111111110110110000010111011111111110010101111,
	240'b101100001111111111010010010101110101010011000101111111111111111111111111111111111110000010101101010111100101001010010100101111111011111110001010010100010101111111100100111111111111111111111111111111111111110010100010111011011111110010101111,
	240'b101100001111111111010010010110000101000001111001111101011111111111111111111111111010101101001110010101010101010101010100010100110101001101010100010101000101011111011001111111111111111111111111111111111111111111000010111011011111110010101111,
	240'b101100001111111111010010010110000101010001010010101011111111111111111111111111111010101101001110010101010101010101010100010100110101001101010011010100100101011011011010111111111111111111111111111111111111111111011011111100011111101110101111,
	240'b101100001111111111010010010110000101010001010011011000011101101111111111111111111110000110101101010111100101001010010100110000001011111010111110101111011011111111110001111111111111111111111111111111111111111111101111111101011111101110101111,
	240'b101100001111111111010010010110000101010001010101010100010111011111101101111111111111111111101100011000100100111010111110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001111101111111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101000110001000111100101111111111101010011100010101111011000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111110001111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010001100010111111000011111110111001011110001011110100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111110001111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010101010100010111110111100001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101001111100111111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101010001010101010101010101000101101000101111101111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110110111011011111110010101111,
	240'b101100001111111111010010010110000101010001010101010101100101110001010111010101010101010101010010010101101000011011001111111110011111111111111111111111111111111111111111111111111111111111111111111111111101010101111000111100001111110010101111,
	240'b101100001111111111010010010110000101000101001111011001101100100101101110010100100101010101010101010101000101000001011001100000001011011111100000111101111111111111111111111111111111111111111111110100110110110001101000111100101111110010101111,
	240'b101100001111111111010001011000001001100110100110101101101111101010101011010101110101010001010101010101010101010101010100010100010101001001100000011110001000111010100010101011001010101010001011010111100100111101101100111100101111110010101111,
	240'b101100001111111111001111011010001110101111110000111001111111111011001110010110110101010001010101010101010101010101010101010101010101010101010011010100010101000001010001010100010101000101010000010100110101001001101100111100101111110010101111,
	240'b101100001111111111010001010110011100110110111100011101101110110101111111010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010010010100111000101111100100100000011110110101111000010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010010010101100101101111011011101100101010101101101010010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010010010101110100111110011110110111110101110001010011010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101011111100101111110010101111,
	240'b101001111111111111011011010110100101000101100110111001101001000001010000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110001111110001111011010101000,
	240'b100111101111110011111000100001010100110101001111011110110111001101001111010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000110101001111111111110011010011011,
	240'b110001001101111011111111111010111010000110001010100010001000100110001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001011100011001011001111111000111111111100111011000100,
	240'b111101111011101111101110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111011100100111111101,
	240'b111101111110100010111111110111011110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110110111010001101111011110111111110110,
	240'b111011111111111111101110100110101001000110101011101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101001111000100010100111111010101111000011101111,
	240'b111111101111010111011010100111111010000010110001101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101011101001110110110100111101111111111111111110,
	240'b111111111101101010111000111001101111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111101011011010101111101111010011111111,
	240'b111100101011110011110110111111111111111011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101111111111111111111111001111100010111111000,
	240'b101111001110010111111111110111101000111001111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111011001110101011110101001111111110000111111111101001010111001,
	240'b100111011111111011110101011110100100110101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100011001000010000100010011100100110110011101111111111110100010011011,
	240'b101010011111111111011000010110010101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100001010000011100001010111100100111101101111111101111111011110101010,
	240'b101100001111111111010001010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000110101011100111100100000100110101101011111100101111110010101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001100000001011101110111000110100000101010001101011111100101111110010101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001111100100001110011101110111111010010111101101101000111100101111110010101111,
	240'b101100001111111111010010010110000101010001010101010101010101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010100101000001110101101110110110101001011101101101001111100011111110010101111,
	240'b101100001111111111010010010110000101010001010010010100000101010001010011010100000101000001010001010100110101010001010101010101010101010101010101010101010101001001100111111010011111111011101111111110001101001101101111111100011111110010101111,
	240'b101100001111111111010010010101110101000101110110101010111100000010111101101100111001110110000001011001000101001101010000010101000101010101010101010101010101010001011001101101001111010010010101100100000111110101101101111100011111110010101111,
	240'b101100001111111111010001010101101001100111110001111111111111111111111111111111111111111111111011111001101100000010001000010110110101000001010100010101010101010101010001011110011011010001010101010011110100111001101100111100101111110010101111,
	240'b101100001111111111001101100010011111100011111111111111111111111111111111111111111111111111111111111111111111111111111100110100101000011101010101010100100101010101010101010101010101010001010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010101110100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010111010011001000101000101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111100111111100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110010111010001010000010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111110011111110011111111111111111111111111111111111111111111111111111111111111111111110111101010111001111111001111111111111111111111111111110100001111110010100000101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111110010111110001111111111111111111111111111111111111111111111111111111111111111111110111000011101001101100001011111101111111111111111111111111111101011011110100101000001010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111101110111101101111111111111111111111111111111111111111111111111111111111111111111111111100011001010011010110001101010011111111111111111111111111111111111000010110100101010010010101010101001001101100111100101111110010101111,
	240'b101100001111111111100110111100101111111111111111111111111111111111111111111111111111111111111111111111111111011001110110010011001001010111111111111111111111111111111111111111111100011101011000010101000101001001101100111100101111110010101111,
	240'b101100001111111111011011111010011111111111111111111111111111111111111111111111111111111111111111111111111111111110110100010011110110001011100100111111111111111111111111111111111111111010011010010100000101001001101100111100101111110010101111,
	240'b101100001111111111010100110100011111111111111111111111111111111111111111111111111111111111111111111111101111111011101011011010000100111010101000111111111111111111111111111111111111111111101000011010000100111101101100111100101111110010101111,
	240'b101100001111111111001101101100011111111111111111111111111111111111111111111111111111111111101101100010010111101011001111101000110100110101101101111100001111111111111111111111111111111111111111101011000100111001101100111100101111110010101111,
	240'b101100001111111111001101100010011111110111111111111111111111111111111111111111111111111111100111011000000100110010111110111000110101111001010001101110111111111111111111111111111111111111111111111010010110001101101001111100101111110010101111,
	240'b101100001111111111010000011001011110010111111111111111111111111111111111111111111111111111101000011001000101000010111101111111111000110101001011011111001111100111111111111111111111111111111111111111111001011001100111111100101111110010101111,
	240'b101100001111111111010010010101001011010111111111111111111111111111111111111111111111111111101000011001000101000010111100111111111100111001010110010101101100111011111111111111111111111111111111111111111100100101101101111100011111110010101111,
	240'b101100001111111111010010010100110111100111111000111111111111111111111111111111111111111111101101011001000101000010111111111111111111111010000001010011001000110111111101111111111111111111111111111111111110110110000010111011111111110010101111,
	240'b101100001111111111010010010101110101010011000101111111111111111111111111111111111110000010101101010111100101001010010100101111111011111110001010010100010101111111100100111111111111111111111111111111111111110010100010111011011111110010101111,
	240'b101100001111111111010010010110000101000001111001111101011111111111111111111111111010101101001110010101010101010101010100010100110101001101010100010101000101011111011001111111111111111111111111111111111111111111000010111011011111110010101111,
	240'b101100001111111111010010010110000101010001010010101011111111111111111111111111111010101101001110010101010101010101010100010100110101001101010011010100100101011011011010111111111111111111111111111111111111111111011011111100011111101110101111,
	240'b101100001111111111010010010110000101010001010011011000011101101111111111111111111110000110101101010111100101001010010100110000001011111010111110101111011011111111110001111111111111111111111111111111111111111111101111111101011111101110101111,
	240'b101100001111111111010010010110000101010001010101010100010111011111101101111111111111111111101100011000100100111010111110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001111101111111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101000110001000111100101111111111101010011100010101111011000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111110001111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010001100010111111000011111110111001011110001011110100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111110001111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101010101010101010100010111110111100001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101001111100111111101110101111,
	240'b101100001111111111010010010110000101010001010101010101010101010001010101010101010101000101101000101111101111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110110111011011111110010101111,
	240'b101100001111111111010010010110000101010001010101010101100101110001010111010101010101010101010010010101101000011011001111111110011111111111111111111111111111111111111111111111111111111111111111111111111101010101111000111100001111110010101111,
	240'b101100001111111111010010010110000101000101001111011001101100100101101110010100100101010101010101010101000101000001011001100000001011011111100000111101111111111111111111111111111111111111111111110100110110110001101000111100101111110010101111,
	240'b101100001111111111010001011000001001100110100110101101101111101010101011010101110101010001010101010101010101010101010100010100010101001001100000011110001000111010100010101011001010101010001011010111100100111101101100111100101111110010101111,
	240'b101100001111111111001111011010001110101111110000111001111111111011001110010110110101010001010101010101010101010101010101010101010101010101010011010100010101000001010001010100010101000101010000010100110101001001101100111100101111110010101111,
	240'b101100001111111111010001010110011100110110111100011101101110110101111111010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010010010100111000101111100100100000011110110101111000010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010010010101100101101111011011101100101010101101101010010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101100111100101111110010101111,
	240'b101100001111111111010010010101110100111110011110110111110101110001010011010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101011111100101111110010101111,
	240'b101001111111111111011011010110100101000101100110111001101001000001010000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110001111110001111011010101000,
	240'b100111101111110011111000100001010100110101001111011110110111001101001111010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000110101001111111111110011010011011,
	240'b110001001101111011111111111010111010000110001010100010001000100110001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001011100011001011001111111000111111111100111011000100,
	240'b111101111011101111101110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111011100100111111101,
	240'b111101111110100010111111110111011110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110110111010001101111011110111111110110,
	240'b111011111111111111101110100110101001000110101011101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101001111000100010100111111010101111000011101111,
	240'b111111101111010111011010100111111010000010110001101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101011101001110110110100111101111111111111111110,
	240'b111111111101101010111000111001101111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111101011011010101111101111010011111111,
	240'b111100101011110011110110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001111100010111111000,
	240'b101111001110010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101001010111001,
	240'b100111011111110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100010011011,
	240'b101010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011010101010,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101100001111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101111,
	240'b101001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010010101000,
	240'b100111101111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011010011011,
	240'b110001001101111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100111011000100,
	240'b111101111011101111101110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111011100100111111101,
	240'b111101111110100010111111110111011110111011101110111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011101110110111010001101111011110111111110110,
	240'b111011111111111111101110100110101001000110101011101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101001111000100010100111111010101111000011101111,
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