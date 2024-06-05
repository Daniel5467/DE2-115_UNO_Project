module blue_three(
	input [7:0] addr,
	output [239:0] data
);
parameter [0:149][239:0] picture = {
	240'b111111111111010111100101101001111001110010101111101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101011111001110110110000111101011111111111111101,
	240'b111111111110011010110110110111001111101111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111101111011100101111011111001011111111,
	240'b111110001011111011101010111111111111111111110111111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101111111111111111111111010011100001111111000,
	240'b101110101101010111111111111011001001101001111001011110000111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110000111010101110100011101111001101111101110111111111101010010111001,
	240'b100110001111001011111110100101000100110101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100000111101010100000011011000100101110010111111111101110110010011111,
	240'b101010111111011111110000011010100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010010011101011110101111110001111000010110000101101000111100101111101110101110,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010000100110001110011101111110101010000110011101100101111011011111110010110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010000100000101111100111010101011001000100111001101000111011011111110010110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100101101101110111110111101011001000100111001101000111011011111110010110001,
	240'b101100101111011011101011011001100101001101010101010101010101010001010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100011111010011001010001001100010111110110100001101000111011011111110010110001,
	240'b101100101111011011101011011001100101001101010010010100000101001101010011010100000101000001010001010100100101010001010101010101010101010101010101010101010101001101100010111010001001101001010001101101001100010001100111111011001111110010110001,
	240'b101100101111011011101011011001100100111101101100101000111011111010111110101101011010000110000101011010000101010101010000010100110101010101010101010101010101010101010011101100001111010011010110111101111001001101100100111011011111110010110001,
	240'b101100101111011011101011011000111000001111100111111111111111111111111111111111111111111111111101111010101100011010001111010111100101000001010100010101010101010101010100010111001010001011000110100100110101001101100111111011011111110010110001,
	240'b101100101111011011101000100000011110100111111111111111111111111111111111111111111111111111111111111111111111111111111110110110101001000001010111010100100101010101010101010101000101000101010011010100010101000101101000111011011111110010110001,
	240'b101100101111011011100111110001011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011000100011010100101000101010101010101010101010101010100010101010101001001101000111011011111110010110001,
	240'b101100101111010111101111111011001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000100111110101010001010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111010111110110111101001111111111111111111111111111111111111111111111111111111111111111111111111111010011011010110110101111010111111111111111111110111110001000010100010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111010111110110111101001111111111111111111111111111111111111111111111111111111111111111110110110111110001010111010110000111110111011101111111111111111111110001100001000101000001010101010101010101001001101000111011011111110010110001,
	240'b101100101111010111110011111100011111111111111111111111111111111111111111111111111111111111101111011101000100111001001111010011110100111001110101111100001111111111111111111010010111000001010001010101010101001001101000111011011111110010110001,
	240'b101100101111010111101111111011001111111111111111111111111111111111111111111111111111111110111011010100000101011010001111100011100101001101001100101110111111111111111111111111111101000101011100010100110101001001101000111011011111110010110001,
	240'b101100101111011011101010110111011111111111111111111111111111111111111111111111111111111110011110010010110111001011111010111110001000110001110000101100111111111111111111111111111111111110100100010100010101001001101000111011011111110010110001,
	240'b101100101111011011100111110000101111111111111111111111111111111111111111111111111111111110100010010011000110101011100110111111111111110111111100111111011111111111111111111111111111111111101111011011110100111101101000111011011111110010110001,
	240'b101100101111011011100101101000001111111011111111111111111111111111111111111111111111111111001110010110000101001101101011011110111100011111111111111111111111111111111111111111111111111111111111101101010100111101100111111011011111110010110001,
	240'b101100101111011011101000011111111110111111111111111111111111111111111111111111111111111111010100010111100101001101010000010010101011001011111111111111111111111111111111111111111111111111111111111011100110100101100101111011011111110010110001,
	240'b101100101111011011101010011010001100110011111111111111111111111111111111111111111111000101110110010100010101010001100111011011011100000011111111111111111111111111111111111111111111111111111111111111111001111001100011111011011111110010110001,
	240'b101100101111011011101011011000011001011111111111111111111111111111111111111111111011100101010000010101001010000011101000111101001111101011111111111111111111111111111111111111111111111111111111111111111101000101101011111011001111110010110001,
	240'b101100101111011011101011011001000110001111101001111111111111111111111111111111111000110001001100011110011111100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001010000011111010011111110010110001,
	240'b101100101111011011101011011001100100111010101001111111111111111111111111111111000111111001001011100110001111111111111111111111111111111111010111101110011100110111111111111111111111111111111111111111111111111010100101111001111111110010110001,
	240'b101100101111011011101011011001100101000001100110111001101111111111111111111111101000011001001011100001101111111111111111111111111111111010000100010010011000011111111111111111111111111111111111111111111111111111000101111010011111110010110001,
	240'b101100101111011011101011011001100101001101010000100101011111110111111111111111111010100001001110010110111100010011111111111111111100001101011010010011101010101111111111111111111111111111111111111111111111111111011110111011011111110010110001,
	240'b101100101111011011101011011001100101001101010100010101111100010011111111111111111110001001100010010011110101111010001011100010100101111001001111011001001110010011111111111111111111111111111111111111111111111111110001111100011111101110110001,
	240'b101100101111011011101011011001100101001101010101010100100110011111011101111111111111111110111011010110010100111001001110010011100100111001011011101111101111111111111111111111111111111111111111111111111111111111110111111101001111101110110001,
	240'b101100101111011011101011011001100101001101010101010101010101000101110110111001111111111111111111110010010111111001100101011001010111111111001010111111111111111111111111111111111111111111111111111111111111111111111000111101101111101110110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010000011110101110010111111111111111111111101011101000111010001111101011111111111111111111111111111111111111111111111111111111111111111111111111111000111101011111101110110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010100000111000011010100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101011111100001111101110110001,
	240'b101100101111011011101011011001100101001101010101010101000101010101010101010101010101000101100000101100011111011011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111001111010011111110010110001,
	240'b101100101111011011101011011001100101001001010010010110100101001101010011010101010101010101010011010100110111110011000110111101101111111111111111111111111111111111111111111111111111111111111111111111111101101101110111111010101111110010110001,
	240'b101100101111011011101011011001010101100010101001110110001011011001100010010100110101010101010101010101000101000101010110011110101011001011011101111101011111111111111111111111111111111111111111110110000111000101100100111011011111110010110001,
	240'b101100101111011011101011011000101010001111110101110000101110111010111011010101000101010101010101010101010101010101010100010100010101001001011110011101101000110010100001101010111010101110001110011000000100111101101000111011011111110010110001,
	240'b101100101111011011101010011010001011110010100011010010011001010011100111011000110101001101010101010101010101010101010101010101010101010101010011010100010101000001010001010100010101000101010000010100110101001001101000111011011111110010110001,
	240'b101100101111011011101011011001110101110101011001010101001010001011100100011000000101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111011011101011011001100100111001101100110100001111011010100111010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111011011101011011001100101000101101001110000101111011010000001010100000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111011011101011011000110110110011000000100001001110101110010100010011110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001100111111011011111110010110001,
	240'b101010011111011111110010011010100101110111010110111101111110001001101100010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101101100111101001111101010101101,
	240'b100101111110111011111111101000000100110101100010100010110110101101001110010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000100111110100011111111111110101010011110,
	240'b110001101101000011111111111101011010111010001001100001101000100110001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001100100010111010111111110110111111111100111111000100,
	240'b111111011100001011100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000001100011111111101,
	240'b111101101111000111000010110101011110110111101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110110111010011101111001110110111110110,
	240'b111011101111111011110111101010101000101110101001101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101010001000100110100011111010001111000011110001,
	240'b111111111111010111100101101001111001110010101111101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101011111001110110110000111101011111111111111101,
	240'b111111111110011010110110110111001111101111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111101111011100101111011111001011111111,
	240'b111110001011111011101010111111111111111111110111111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101111111111111111111111010011100001111111000,
	240'b101110101101010111111111111011001001101001111001011110000111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110010111100101111001011110000111010101110100011101111001101111101110111111111101010010111001,
	240'b100110001111001011111110100101000100110101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100000111101010100000011011000100101110010111111111101110110010011111,
	240'b101010111111011111110000011010100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010010011101011110101111110001111000010110000101101000111100101111101110101110,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010000100110001110011101111110101010000110011101100101111011011111110010110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010000100000101111100111010101011001000100111001101000111011011111110010110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100101101101110111110111101011001000100111001101000111011011111110010110001,
	240'b101100101111011011101011011001100101001101010101010101010101010001010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101100011111010011001010001001100010111110110100001101000111011011111110010110001,
	240'b101100101111011011101011011001100101001101010010010100000101001101010011010100000101000001010001010100100101010001010101010101010101010101010101010101010101001101100010111010001001101001010001101101001100010001100111111011001111110010110001,
	240'b101100101111011011101011011001100100111101101100101000111011111010111110101101011010000110000101011010000101010101010000010100110101010101010101010101010101010101010011101100001111010011010110111101111001001101100100111011011111110010110001,
	240'b101100101111011011101011011000111000001111100111111111111111111111111111111111111111111111111101111010101100011010001111010111100101000001010100010101010101010101010100010111001010001011000110100100110101001101100111111011011111110010110001,
	240'b101100101111011011101000100000011110100111111111111111111111111111111111111111111111111111111111111111111111111111111110110110101001000001010111010100100101010101010101010101000101000101010011010100010101000101101000111011011111110010110001,
	240'b101100101111011011100111110001011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011000100011010100101000101010101010101010101010101010100010101010101001001101000111011011111110010110001,
	240'b101100101111010111101111111011001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000100111110101010001010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111010111110110111101001111111111111111111111111111111111111111111111111111111111111111111111111111010011011010110110101111010111111111111111111110111110001000010100010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111010111110110111101001111111111111111111111111111111111111111111111111111111111111111110110110111110001010111010110000111110111011101111111111111111111110001100001000101000001010101010101010101001001101000111011011111110010110001,
	240'b101100101111010111110011111100011111111111111111111111111111111111111111111111111111111111101111011101000100111001001111010011110100111001110101111100001111111111111111111010010111000001010001010101010101001001101000111011011111110010110001,
	240'b101100101111010111101111111011001111111111111111111111111111111111111111111111111111111110111011010100000101011010001111100011100101001101001100101110111111111111111111111111111101000101011100010100110101001001101000111011011111110010110001,
	240'b101100101111011011101010110111011111111111111111111111111111111111111111111111111111111110011110010010110111001011111010111110001000110001110000101100111111111111111111111111111111111110100100010100010101001001101000111011011111110010110001,
	240'b101100101111011011100111110000101111111111111111111111111111111111111111111111111111111110100010010011000110101011100110111111111111110111111100111111011111111111111111111111111111111111101111011011110100111101101000111011011111110010110001,
	240'b101100101111011011100101101000001111111011111111111111111111111111111111111111111111111111001110010110000101001101101011011110111100011111111111111111111111111111111111111111111111111111111111101101010100111101100111111011011111110010110001,
	240'b101100101111011011101000011111111110111111111111111111111111111111111111111111111111111111010100010111100101001101010000010010101011001011111111111111111111111111111111111111111111111111111111111011100110100101100101111011011111110010110001,
	240'b101100101111011011101010011010001100110011111111111111111111111111111111111111111111000101110110010100010101010001100111011011011100000011111111111111111111111111111111111111111111111111111111111111111001111001100011111011011111110010110001,
	240'b101100101111011011101011011000011001011111111111111111111111111111111111111111111011100101010000010101001010000011101000111101001111101011111111111111111111111111111111111111111111111111111111111111111101000101101011111011001111110010110001,
	240'b101100101111011011101011011001000110001111101001111111111111111111111111111111111000110001001100011110011111100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001010000011111010011111110010110001,
	240'b101100101111011011101011011001100100111010101001111111111111111111111111111111000111111001001011100110001111111111111111111111111111111111010111101110011100110111111111111111111111111111111111111111111111111010100101111001111111110010110001,
	240'b101100101111011011101011011001100101000001100110111001101111111111111111111111101000011001001011100001101111111111111111111111111111111010000100010010011000011111111111111111111111111111111111111111111111111111000101111010011111110010110001,
	240'b101100101111011011101011011001100101001101010000100101011111110111111111111111111010100001001110010110111100010011111111111111111100001101011010010011101010101111111111111111111111111111111111111111111111111111011110111011011111110010110001,
	240'b101100101111011011101011011001100101001101010100010101111100010011111111111111111110001001100010010011110101111010001011100010100101111001001111011001001110010011111111111111111111111111111111111111111111111111110001111100011111101110110001,
	240'b101100101111011011101011011001100101001101010101010100100110011111011101111111111111111110111011010110010100111001001110010011100100111001011011101111101111111111111111111111111111111111111111111111111111111111110111111101001111101110110001,
	240'b101100101111011011101011011001100101001101010101010101010101000101110110111001111111111111111111110010010111111001100101011001010111111111001010111111111111111111111111111111111111111111111111111111111111111111111000111101101111101110110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010000011110101110010111111111111111111111101011101000111010001111101011111111111111111111111111111111111111111111111111111111111111111111111111111000111101011111101110110001,
	240'b101100101111011011101011011001100101001101010101010101010101010101010101010100000111000011010100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101011111100001111101110110001,
	240'b101100101111011011101011011001100101001101010101010101000101010101010101010101010101000101100000101100011111011011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111001111010011111110010110001,
	240'b101100101111011011101011011001100101001001010010010110100101001101010011010101010101010101010011010100110111110011000110111101101111111111111111111111111111111111111111111111111111111111111111111111111101101101110111111010101111110010110001,
	240'b101100101111011011101011011001010101100010101001110110001011011001100010010100110101010101010101010101000101000101010110011110101011001011011101111101011111111111111111111111111111111111111111110110000111000101100100111011011111110010110001,
	240'b101100101111011011101011011000101010001111110101110000101110111010111011010101000101010101010101010101010101010101010100010100010101001001011110011101101000110010100001101010111010101110001110011000000100111101101000111011011111110010110001,
	240'b101100101111011011101010011010001011110010100011010010011001010011100111011000110101001101010101010101010101010101010101010101010101010101010011010100010101000001010001010100010101000101010000010100110101001001101000111011011111110010110001,
	240'b101100101111011011101011011001110101110101011001010101001010001011100100011000000101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111011011101011011001100100111001101100110100001111011010100111010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111011011101011011001100101000101101001110000101111011010000001010100000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101000111011011111110010110001,
	240'b101100101111011011101011011000110110110011000000100001001110101110010100010011110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001100111111011011111110010110001,
	240'b101010011111011111110010011010100101110111010110111101111110001001101100010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101101100111101001111101010101101,
	240'b100101111110111011111111101000000100110101100010100010110110101101001110010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000100111110100011111111111110101010011110,
	240'b110001101101000011111111111101011010111010001001100001101000100110001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001100100011001000110010001100100010111010111111110110111111111100111111000100,
	240'b111111011100001011100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000001100011111111101,
	240'b111101101111000111000010110101011110110111101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110110111010011101111001110110111110110,
	240'b111011101111111011110111101010101000101110101001101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101010001000100110100011111010001111000011110001,
	240'b111111111111010111100101101001111001110010101111101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101011111001110110110000111101011111111111111101,
	240'b111111111110011010110110110111001111101111111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111110011111100111111001111101011011100101111011111001011111111,
	240'b111110001011111011101010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010011100001111111000,
	240'b101110101101010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010010111001,
	240'b100110001111000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110010011111,
	240'b101010111111010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100110101110,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101100101111010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010110001,
	240'b101010011111010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100010101101,
	240'b100101111110111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100110011110,
	240'b110001101101000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100111111000100,
	240'b111111011100001011100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000001100011111111101,
	240'b111101101111000111000010110101011110110111101110111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011101110110111010011101111001110110111110110,
	240'b111011101111111011110111101010101000101110101001101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101010001000100110100011111010001111000011110001,
};
assign data = picture[addr];
endmodule