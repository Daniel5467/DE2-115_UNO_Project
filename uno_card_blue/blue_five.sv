module blue_five(
	input [7:0] addr,
	output [239:0] data
);
parameter [0:149][239:0] picture = {
	240'b111111111111011111100000100111001001110110110011101101011011010110110101101101011011010110110100101101001011010010110100101101001011010110110101101101011011010110110100101101001011010010110101101011101001011110111010111111011111111111111110,
	240'b111111111110010110110110110110101111011011110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101101111001011001101110001101111101111111111,
	240'b111110011011110111101101111111111111111111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111101111111111111111110110001100111111111001,
	240'b110000111101110011111111111010101010000010000110100001011000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000101100000101000000110000000100001001011001011111010111111111100101010111110,
	240'b100100111111101111111010100010000100110101010000010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000001010110100100001001111010011101100111001000000010110011111111111101101010011110,
	240'b101000101111111111100010010111010101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011111110011111110100111100110111110011011111101111010111111101110101010101010,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010110011000100110001101100001110000011100010001110010111110111111000110110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010011011000011010100011000011111011001100001101110011111110111111000110110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010111110000111111000111001100110010001001011101110100111110111111000110110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101111111100101000010001010000010111110101111001110110111110111111000110110011,
	240'b101100001111111111011010010110100101010001010010010100000101001001010001010011110101000001010001010100110101010101010101010101010101010101010101010101010101000101110001111100110111110001010001101111101010101101110010111110111111000110110011,
	240'b101100001111111111011010010110100101000001101011100111001011001010110000101001011001000101110110010111100101000101010001010101000101010101010101010101010101010001011001110011001110100011001101111101101000010001110010111110111111000110110011,
	240'b101100001111111111011010010101101000101111101000111111111111111111111111111111111111111111110110110111001011001001111011010101100101000101010101010101010101010101010010011010011011101011010000100100010101000101110110111110111111000110110011,
	240'b101100001111111111010110011111111111000111111111111111111111111111111111111111111111111111111111111111111111111111110111110001010111101001010010010100110101010101010101010100110101001101010110010100100101000001110110111110111111000110110011,
	240'b101100001111111011011001110010101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001110101011010111000101001001010101010101010101010001010100010101010101000101110110111110111111000110110011,
	240'b101100001111110111101010111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100000110101001010001010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111101111110111111110001111111111111111111111111111111111111111111110111110000011011010110110111101101111011011110110111101101111011011111000011101010101110010010100010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111101111110111111110001111111111111111111111111111111111111111111011110111000001010111010110100101101001011010010110100101101001011001011000011110000011100010011011100101000101010101010101010101000101110110111110111111000110110011,
	240'b101100001111110011110011111101011111111111111111111111111111111111111111111011010110011001001011010011100100111001001110010011100101000001010011010110111101101011111111110101000110000001010011010101010101000101110110111110111111000110110011,
	240'b101100001111110011101011111011111111111111111111111111111111111111111111111101101011000010100010101001001010010010100100101001011000111001010101010110111101101011111111111111111011011001010100010101000101000101110110111110111111000110110011,
	240'b101100001111111011100000111001011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101010110010110111101101011111111111111111111101010001001010100000101000101110110111110111111000110110011,
	240'b101100001111111011011010110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101000101010110010110111101101011111111111111111111111111011100010111110100111101110110111110111111000110110011,
	240'b101100001111111111010101101011001111111111111111111111111111111111111111111111111111111111111101110010111001100010001000100001100111100001010101010111001101101011111111111111111111111111111111100110100100110001110110111110111111000110110011,
	240'b101100001111111111010110100001111111101111111111111111111111111111111111111111111111011110011100010101100100111001001101010011010100111101010001010110011101100111111111111111111111111111111111110111000101100101110101111110111111000110110011,
	240'b101100001111111111011000011001011110001111111111111111111111111111111111111111111010101101010000010100010101101101101001011010010110100101101000011011111101111011111111111111111111111111111111111111011000001101110010111110111111000110110011,
	240'b101100001111111111011010010101101011001011111111111111111111111111111111111010110110011101001111011101011101001011101110111011111110111111101111111100001111110011111111111111111111111111111111111111111011100001110011111110111111000110110011,
	240'b101100001111111111011010010101100111011011110111111111111111111111111111110001110101001101011000110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000110000011111110011111000110110011,
	240'b101100001111111111011010010110010101010011000011111111111111111111111111101101010100111101101001111011111111111111111111111111111110111111000101110001111111001111111111111111111111111111111111111111111111011010011101111101111111000110110011,
	240'b101100001111111111011010010110100101000001111000111101011111111111111111101111010101000101100000111001001111111111111111111111111011111001010000010111111110001111111111111111111111111111111111111111111111111010111100111101101111000110110011,
	240'b101100001111111111011010010110100101001101010010101011111111111111111111110111000101101101010000100110111111100111111111111010110111100101001101011100111111011011111111111111111111111111111111111111111111111111010101111110001111000110110011,
	240'b101100001111111111011010010110100101010001010011011000011101101111111111111110111000100001001101010101011000000110011001011100100101001001010000101100011111111111111111111111111111111111111111111111111111111111101010111110101111000110110011,
	240'b101100001111111111011010010110100101010001010101010100010111100011101110111111111110000001101111010011100100111001001110010011100100111110001011111101011111111111111111111111111111111111111111111111111111111111110111111111001111000010110011,
	240'b101100001111111111011010010110100101010001010101010101010101000010001010111100111111111111100010100011110110011001100000011011001010010111110011111111111111111111111111111111111111111111111111111111111111111111111011111111011111000010110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010001100011101111001011111111111111101110101111100001111100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111111011111000010110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010100011000000111100100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100110111110101111000110110011,
	240'b101100001111111111011010010110100101010001010101010101000101010101010101010101010101000101101011110000111111110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110110100111101111111000110110011,
	240'b101100001111111111011010010110100101001001010011010110000101001001010100010101010101010101010010010101111000101111010100111110111111111111111111111111111111111111111111111111111111111111111111111111111100101101111101111110101111000110110011,
	240'b101100001111111111011010010110000101111110110001110101001010011001011010010101000101010101010101010101000101000001011011100001011011110111100101111110011111111111111111111111111111111111111110110011110110011001110011111110111111000110110011,
	240'b101100001111111111011010010110001011011111110001110001011111010010100010010100010101010101010101010101010101010101010100010100010101001101100011011111011001001110100111101100011010110110001011010111010100111001110110111110111111000110110011,
	240'b101100001111111111011001011000111100110010010000010010101010111011011000010110000101010001010101010101010101010101010101010101010101010001010011010100010101000001010001010100100101000101010000010100110101000101110110111110111111000110110011,
	240'b101100001111111111011010010111000110001101011010010101011011100011010101010101110101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111111111011001011001001011101011001111110101101111011010010101010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111111111011000011010101110110011010101101111011000111001010101010101000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111111111011000011010101110100010010001011000100110010101100000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110101111110111111000110110011,
	240'b101000101111111111100000011011011110100111110011111011001110111110101111010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000001111110111111101110101010101010,
	240'b100100101111101011111010100100011000001110010000100100001001001001110110010011110101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010011110101001110110111111111111101101010011101,
	240'b110001011101101011111111111011011001111010000100100001011000010110000111100010111000101110001011100010111000101110001011100010111000101110001011100010111000101110001011100010111000101110001010100011001011100111111011111111111100100111000000,
	240'b111110101011110111101011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110101101101000111111010,
	240'b111101101110101010111111110111001110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011111110110111001100110000011111001011110110,
	240'b111011101111110111110001100111101000111110101010101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101101101001011000011010110000111011011111000011101111,
	240'b111111111111011111100000100111001001110110110011101101011011010110110101101101011011010110110100101101001011010010110100101101001011010110110101101101011011010110110100101101001011010010110101101011101001011110111010111111011111111111111110,
	240'b111111111110010110110110110110101111011011110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101101111001011001101110001101111101111111111,
	240'b111110011011110111101101111111111111111111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111011111110111111101111111101111111111111111110110001100111111111001,
	240'b110000111101110011111111111010101010000010000110100001011000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000101100000101000000110000000100001001011001011111010111111111100101010111110,
	240'b100100111111101111111010100010000100110101010000010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000001010110100100001001111010011101100111001000000010110011111111111101101010011110,
	240'b101000101111111111100010010111010101001101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011111110011111110100111100110111110011011111101111010111111101110101010101010,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010110011000100110001101100001110000011100010001110010111110111111000110110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010011011000011010100011000011111011001100001101110011111110111111000110110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010111110000111111000111001100110010001001011101110100111110111111000110110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001101111111100101000010001010000010111110101111001110110111110111111000110110011,
	240'b101100001111111111011010010110100101010001010010010100000101001001010001010011110101000001010001010100110101010101010101010101010101010101010101010101010101000101110001111100110111110001010001101111101010101101110010111110111111000110110011,
	240'b101100001111111111011010010110100101000001101011100111001011001010110000101001011001000101110110010111100101000101010001010101000101010101010101010101010101010001011001110011001110100011001101111101101000010001110010111110111111000110110011,
	240'b101100001111111111011010010101101000101111101000111111111111111111111111111111111111111111110110110111001011001001111011010101100101000101010101010101010101010101010010011010011011101011010000100100010101000101110110111110111111000110110011,
	240'b101100001111111111010110011111111111000111111111111111111111111111111111111111111111111111111111111111111111111111110111110001010111101001010010010100110101010101010101010100110101001101010110010100100101000001110110111110111111000110110011,
	240'b101100001111111011011001110010101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001110101011010111000101001001010101010101010101010001010100010101010101000101110110111110111111000110110011,
	240'b101100001111110111101010111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100000110101001010001010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111101111110111111110001111111111111111111111111111111111111111111110111110000011011010110110111101101111011011110110111101101111011011111000011101010101110010010100010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111101111110111111110001111111111111111111111111111111111111111111011110111000001010111010110100101101001011010010110100101101001011001011000011110000011100010011011100101000101010101010101010101000101110110111110111111000110110011,
	240'b101100001111110011110011111101011111111111111111111111111111111111111111111011010110011001001011010011100100111001001110010011100101000001010011010110111101101011111111110101000110000001010011010101010101000101110110111110111111000110110011,
	240'b101100001111110011101011111011111111111111111111111111111111111111111111111101101011000010100010101001001010010010100100101001011000111001010101010110111101101011111111111111111011011001010100010101000101000101110110111110111111000110110011,
	240'b101100001111111011100000111001011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101010101010110010110111101101011111111111111111111101010001001010100000101000101110110111110111111000110110011,
	240'b101100001111111011011010110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101000101010110010110111101101011111111111111111111111111011100010111110100111101110110111110111111000110110011,
	240'b101100001111111111010101101011001111111111111111111111111111111111111111111111111111111111111101110010111001100010001000100001100111100001010101010111001101101011111111111111111111111111111111100110100100110001110110111110111111000110110011,
	240'b101100001111111111010110100001111111101111111111111111111111111111111111111111111111011110011100010101100100111001001101010011010100111101010001010110011101100111111111111111111111111111111111110111000101100101110101111110111111000110110011,
	240'b101100001111111111011000011001011110001111111111111111111111111111111111111111111010101101010000010100010101101101101001011010010110100101101000011011111101111011111111111111111111111111111111111111011000001101110010111110111111000110110011,
	240'b101100001111111111011010010101101011001011111111111111111111111111111111111010110110011101001111011101011101001011101110111011111110111111101111111100001111110011111111111111111111111111111111111111111011100001110011111110111111000110110011,
	240'b101100001111111111011010010101100111011011110111111111111111111111111111110001110101001101011000110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000110000011111110011111000110110011,
	240'b101100001111111111011010010110010101010011000011111111111111111111111111101101010100111101101001111011111111111111111111111111111110111111000101110001111111001111111111111111111111111111111111111111111111011010011101111101111111000110110011,
	240'b101100001111111111011010010110100101000001111000111101011111111111111111101111010101000101100000111001001111111111111111111111111011111001010000010111111110001111111111111111111111111111111111111111111111111010111100111101101111000110110011,
	240'b101100001111111111011010010110100101001101010010101011111111111111111111110111000101101101010000100110111111100111111111111010110111100101001101011100111111011011111111111111111111111111111111111111111111111111010101111110001111000110110011,
	240'b101100001111111111011010010110100101010001010011011000011101101111111111111110111000100001001101010101011000000110011001011100100101001001010000101100011111111111111111111111111111111111111111111111111111111111101010111110101111000110110011,
	240'b101100001111111111011010010110100101010001010101010100010111100011101110111111111110000001101111010011100100111001001110010011100100111110001011111101011111111111111111111111111111111111111111111111111111111111110111111111001111000010110011,
	240'b101100001111111111011010010110100101010001010101010101010101000010001010111100111111111111100010100011110110011001100000011011001010010111110011111111111111111111111111111111111111111111111111111111111111111111111011111111011111000010110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010001100011101111001011111111111111101110101111100001111100011111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111111011111000010110011,
	240'b101100001111111111011010010110100101010001010101010101010101010101010101010100011000000111100100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100110111110101111000110110011,
	240'b101100001111111111011010010110100101010001010101010101000101010101010101010101010101000101101011110000111111110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110110100111101111111000110110011,
	240'b101100001111111111011010010110100101001001010011010110000101001001010100010101010101010101010010010101111000101111010100111110111111111111111111111111111111111111111111111111111111111111111111111111111100101101111101111110101111000110110011,
	240'b101100001111111111011010010110000101111110110001110101001010011001011010010101000101010101010101010101000101000001011011100001011011110111100101111110011111111111111111111111111111111111111110110011110110011001110011111110111111000110110011,
	240'b101100001111111111011010010110001011011111110001110001011111010010100010010100010101010101010101010101010101010101010100010100010101001101100011011111011001001110100111101100011010110110001011010111010100111001110110111110111111000110110011,
	240'b101100001111111111011001011000111100110010010000010010101010111011011000010110000101010001010101010101010101010101010101010101010101010001010011010100010101000001010001010100100101000101010000010100110101000101110110111110111111000110110011,
	240'b101100001111111111011010010111000110001101011010010101011011100011010101010101110101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111111111011001011001001011101011001111110101101111011010010101010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111111111011000011010101110110011010101101111011000111001010101010101000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110110111110111111000110110011,
	240'b101100001111111111011000011010101110100010010001011000100110010101100000010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000101110101111110111111000110110011,
	240'b101000101111111111100000011011011110100111110011111011001110111110101111010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000001111110111111101110101010101010,
	240'b100100101111101011111010100100011000001110010000100100001001001001110110010011110101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010011110101001110110111111111111101101010011101,
	240'b110001011101101011111111111011011001111010000100100001011000010110000111100010111000101110001011100010111000101110001011100010111000101110001011100010111000101110001011100010111000101110001010100011001011100111111011111111111100100111000000,
	240'b111110101011110111101011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110101101101000111111010,
	240'b111101101110101010111111110111001110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011101110111011111110110111001100110000011111001011110110,
	240'b111011101111110111110001100111101000111110101010101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101101101001011000011010110000111011011111000011101111,
	240'b111111111111011111100000100111001001110110110011101101011011010110110101101101011011010110110100101101001011010010110100101101001011010110110101101101011011010110110100101101001011010010110101101011101001011110111010111111011111111111111110,
	240'b111111111110010110110110110110101111010111110101111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101011111001011001101110001101111101111111111,
	240'b111110011011110111101101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110001100111111111001,
	240'b110000111101110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100101010111110,
	240'b100100111111100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101101010011110,
	240'b101000101111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100110101010,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101100001111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000010110011,
	240'b101000101111110011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100110101010,
	240'b100100101111100111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101101010011101,
	240'b110001011101101011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100111000000,
	240'b111110101011110111101011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110101101101000111111010,
	240'b111101101110101010111111110111001110111011101110111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011101110110011001100110000011111001011110110,
	240'b111011101111110111110001100111101000111110101010101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101100101011001010110010101101101001011000011010110000111011011111000011101111,
};
assign data = picture[addr];
endmodule