module green_zero(
	input [7:0] addr,
	output [239:0] data
);
parameter [0:149][239:0] picture = {
	240'b111100111111111111110110101011111001110010101001101010101010101010101010101010101010101110101011101010111010101110101011101010101010101010101010101010101010101010101011101010111010101110101011101010101001111010011111111000011111100010111000,
	240'b111101011111011111000100110100001110110011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111000011010100101110011110011110111010,
	240'b111100101100011011100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111011111010110011,
	240'b101111011100111111111111111101101011000010001110100011011000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100011011000101010001000100010011010010111101110111111111101110010010011,
	240'b100111001110101111111111101000100100111101001111010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010011100110101010001011011011100100110010001011111110101111101110000110,
	240'b101011001111101111110011011010110101000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010010100000001110101111111000111100001000100001011011111000011111111110000110,
	240'b101100101111111011101011011001100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010110110011101100110001101011101111111101100101100001110101111111111110001000,
	240'b101100101111111011101011011001110101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011110111000001001011001000111100010001110010101101100110101101111111110001000,
	240'b101100101111111011101011011001110101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011111111000001001010101001011100010001110010001101101110101101111111110001000,
	240'b101100101111111011101011011001110101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011111111000001001010001001010100001111110010001101101110101101111111110001000,
	240'b101100011111111011101011011001110101001001010011010100000101000001010000010100000101000001010001010100110101010101010101010101010101010101010101010101010101010001011010110110111010110101001100100111111110001101100111110101111111111110000111,
	240'b101100011111111011101011011001110100111101100100100110001011011010110100101010101001011001111100011001000101001101010000010100110101010101010101010101010101010101010001101000111111010111001011111100101011000001011001110110001111111110000111,
	240'b101100011111111011101011011000110111100111011110111111111111111111111111111111111111111111111011111001001011111110000111010111010101000101010100010101010101010101010100010110101010001011010011101010100101110001011010110110011111111110000111,
	240'b101100011111111011101000011111001110001111111111111111111111111111111111111111111111111111111111111111111111111111111100110110011000111101011000010100100101010101010101010101000101000101010011010100010101001101011011110110011111111110000111,
	240'b101100011111110111101000110000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111000101011011010101000101010101010101010101010101010100010101010101010001011011110110011111111110000111,
	240'b101100011111110011110000111011101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001101000010001010001010101000101010101010101010101010101010001011011110110011111111110000111,
	240'b101100101111110011110101111110011111111111111111111111111111111111111111111111111111111111111111111111111111010011011011110110011111000011111111111111111111010010010010010100100101010001010101010101010101010001011011110110011111111110001000,
	240'b101100101111110011110101111110001111111111111111111111111111111111111111111111111111111111111110110000010111010001011101010111000110111010110010111110101111111111110110100100010101000001010101010101010101010001011011110110011111111110001000,
	240'b101100101111110011110011111101111111111111111111111111111111111111111111111111111111111110110101010101100100111101001111010011110100111101010001101000011111110111111111111100010111111001010000010101010101010001011011110110011111111110001000,
	240'b101100101111110011110000111011101111111111111111111111111111111111111111111111111110001001100001010100000110001010011011101000010110101001010000010101111100111011111111111111111110000001100110010100100101010001011011110110011111111110001000,
	240'b101100101111110111101011110110101111111111111111111111111111111111111111111111111010101101001110010111001100101011111111111111111101110001100111010011011001001011111111111111111111111110111001010101000101001101011011110110011111111110001000,
	240'b101100011111110111100111110000001111111111111111111111111111111111111111111111111000101101001011100000101111111011111111111111111111111110011001010011000111011011111001111111111111111111111000100000000100111101011011110110011111111110000111,
	240'b101100011111111011100110100111101111110111111111111111111111111111111111111111111000001001001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111110011000101011001011010110110011111111110000111,
	240'b101100011111111011101000011111011110110111111111111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111110100111111001010111110110011111111110000111,
	240'b101100011111111011101010011001111100100011111111111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111111111011101001011001110110001111111110000111,
	240'b101100011111111011101011011000101001000011111110111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111111111110011101101011110101101111111110000111,
	240'b101100011111111011101011011001010101111111100100111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111111111111110110001111110101001111111110000111,
	240'b101100101111111011101011011001110100111010100000111111111111111111111111111111111000001101001010100100001111111111111111111111111111111110101000010011010111000111110100111111111111111111111111111111111111111110110100110101001111111110001000,
	240'b101100101111111011101011011001110101000001100000110111101111111111111111111111111001000001001011011110101111101011111111111111111111111110001111010010110111101011111011111111111111111111111111111111111111111111010100110110111111111110001000,
	240'b101100101111111011101011011001110101001001010000100010011111101011111111111111111011100001010000010101101011000011110111111110101100001101011101010011101001111111111111111111111111111111111111111111111111111111101010111000011111111110001000,
	240'b101100101111111011101011011001110101001001010100010101001011010111111111111111111110111001110000010011110101011101111100100000010101101101001111011000101101111111111111111111111111111111111111111111111111111111110011111010101111111110001000,
	240'b101100101111111011101011011001110101001001010101010100110101111011001111111111111111111111010000011001000100111001001110010011010100111001011011101111101111111111111111111111111111111111111111111111111111111111110110111011111111111110001000,
	240'b101100011111111011101011011001110101001001010101010101010101000101101001110110001111111111111111110111001001010001110011011100001000101111010000111111111111111111111111111111111111111111111111111111111111111111111000111100101111111110000111,
	240'b101100011111111011101011011001110101001001010101010101010101010101010001011010101101001011111111111111111111111111110011111100011111111011111111111111111111111111111111111111111111111111111111111111111111111111110111111100001111111110000111,
	240'b101100011111111011101011011001110101001001010101010101010101010101010101010100010110001010111101111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101101111001001111111110000111,
	240'b101100011111111011101011011001110101001001010100010100110101010001010101010101010101001001010110100100101110010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111011110101101111111110000111,
	240'b101100011111111011101011011001110101000001010110011000010101100101010010010101010101010101010100010100000110011010100110111001011111111111111111111111111111111111111111111111111111111111111111111111111101111101101111110101101111111110000111,
	240'b101100011111111011101011011001010101111010111101111011111101000101110001010100100101010101010101010101010101001001010001011001011001010011000010111001101111010011111100111111111111111111111000110011100111000101011000110110011111111110000111,
	240'b101100101111111011101011011000111010101111101101101000111101110011001110010110000101010001010101010101010101010101010101010100110101000001010101011000010111010110000111100100001001001101111100010110100101000001011011110110011111111110001000,
	240'b101100101111111011101010011010011101011010101011010001111000011011101110011010000101001001010101010101010101010101010101010101010101010101010100010100110101000101010000010011110100111101010001010101000101010001011011110110011111111110001000,
	240'b101100101111111011101010011010111101011110011111010010110111101111101110011010100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110001000,
	240'b101100101111111011101010011010111101011110011111010010110111101111101110011010100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110001000,
	240'b101100101111111011101010011010101101011110100110010001101000000011101110011010000101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110001000,
	240'b101100011111111011101011011000111011010011100110100011101100111111010110010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110000111,
	240'b101010001111100011110110011011110110001111001111111101111110000101111011010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001100010111001111111111110000101,
	240'b100110111110011011111111101110010101011001010101011010000101101101001110010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101010010100100111111101111011010000110,
	240'b110011001100100011111111111111111101000110110010101100001011000110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111100100111111010111111111101001010011010,
	240'b111101101101000011010001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110101100001010111000,
	240'b111110011111010011001001101111001101001011101010111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111101011111000010110010101111100011000000,
	240'b111110111111000111100000101001111010110010111011101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111001011000010101010111001101111111111000010,
	240'b111100111111111111110110101011111001110010101001101010101010101010101010101010101010101110101011101010111010101110101011101010101010101010101010101010101010101010101011101010111010101110101011101010101001111010011111111000011111100010111000,
	240'b111101011111011111000100110100001110110011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111000011010100101110011110011110111010,
	240'b111100101100011011100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111011111010110011,
	240'b101111011100111111111111111110101101011111000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100010011000011110001001101001011110110111111111101110010010011,
	240'b100111001110101111111111110100001010011110100111101001111010011110100111101001111010011110100111101001111010011110100111101001111010011110100111101001111010011110100111101001101011010111000101101101111010011011000101111111011111101110000110,
	240'b101011001111101011111001101101011010100010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000110000001111010111111011111101111100010010101101111100001111111110000110,
	240'b101100101111110011110101101100111010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101011111001111110010110110101110111111110110010110000111010111111111110001000,
	240'b101100101111110011110101101100111010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101111111011111100101010100011110001001111001010110110111010111111111110001000,
	240'b101100101111110011110101101100111010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101111111011111100101010100101110001001111000110110110111010111111111110001000,
	240'b101100101111110011110101101100111010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101111111011111100100110100101110000111111000110110110111010111111111110001000,
	240'b101100011111110011110101101100111010100110101001101010001010100010101000101010001010100010101000101010011010101010101010101010101010101010101010101010101010100110101101111011011101011010100101110011111111000110110011111010111111111110000111,
	240'b101100011111110011110101101100111010011110110010110011001101101011011001110101011100101110111110101100011010100110101000101010011010101010101010101010101010101010101000110100011111101011100101111110011101011110101100111011001111111110000111,
	240'b101100011111110011110101101100011011110011101111111111111111111111111111111111111111111111111101111100101101111111000011101011101010100010101001101010101010101010101010101011011101000011101001110101001010111010101100111011001111111110000111,
	240'b101100011111110011110100101111101111000111111111111111111111111111111111111111111111111111111111111111111111111111111110111011001100011110101011101010001010101010101010101010011010100010101001101010001010100010101101111011001111111110000111,
	240'b101100011111110011110011111000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011100010101101101010100010101010101010101010101010101010101010101010100110101101111011001111111110000111,
	240'b101100011111110011111000111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100111100000110101000101010101010101010101010101010101010100110101101111011001111111110000111,
	240'b101100101111110011111010111111001111111111111111111111111111111111111111111111111111111111111111111111111111100111101101111011001111011111111111111111111111100111001000101010001010101010101010101010101010100110101101111011001111111110001000,
	240'b101100101111110011111010111110111111111111111111111111111111111111111111111111111111111111111111111000001011100110101110101011101011011011011000111111001111111111111011110010001010100010101010101010101010100110101101111011001111111110001000,
	240'b101100101111110011111001111110111111111111111111111111111111111111111111111111111111111111011010101010101010011110100111101001111010011110101000110100001111111011111111111110001011111110101000101010101010100110101101111011001111111110001000,
	240'b101100101111110011111000111101101111111111111111111111111111111111111111111111111111000010110000101001111011000011001101110100001011010110101000101010111110011111111111111111111111000010110010101010011010100110101101111011001111111110001000,
	240'b101100101111110011110101111011011111111111111111111111111111111111111111111111111101010110100110101011011110010111111111111111111110110110110011101001101100100111111111111111111111111111011100101010011010100110101101111011001111111110001000,
	240'b101100011111110011110011111000001111111111111111111111111111111111111111111111111100010110100101110000001111111111111111111111111111111111001100101001011011101111111100111111111111111111111100110000001010011110101101111011001111111110000111,
	240'b101100011111110011110011110011111111111011111111111111111111111111111111111111111100000010100101110010001111111111111111111111111111111111010100101001101011100011111001111111111111111111111111111001101010101010101101111011001111111110000111,
	240'b101100011111110011110100101111101111011011111111111111111111111111111111111111111100000010100101110010001111111111111111111111111111111111010100101001101011100011111001111111111111111111111111111111001011111010101011111011001111111110000111,
	240'b101100011111110011110101101100111110001111111111111111111111111111111111111111111100000010100101110010001111111111111111111111111111111111010100101001101011100011111001111111111111111111111111111111111101110110101100111011001111111110000111,
	240'b101100011111110011110101101100001100100011111111111111111111111111111111111111111100000010100101110010001111111111111111111111111111111111010100101001101011100011111001111111111111111111111111111111111111001110110101111010111111111110000111,
	240'b101100011111110011110101101100101010111111110001111111111111111111111111111111111100000010100101110010001111111111111111111111111111111111010100101001101011100011111001111111111111111111111111111111111111111011000111111010101111111110000111,
	240'b101100101111110011110101101100111010011011001111111111111111111111111111111111111100000110100101110010001111111111111111111111111111111111010100101001101011100011111001111111111111111111111111111111111111111111011010111010101111111110001000,
	240'b101100101111110011110101101100111010100010110000111011111111111111111111111111111100100010100101101111001111110011111111111111111111111111000111101001011011110011111101111111111111111111111111111111111111111111101010111011011111111110001000,
	240'b101100101111110011110101101100111010100110101000110001001111110011111111111111111101101110100111101010101101011111111011111111001110000110101110101001101100111111111111111111111111111111111111111111111111111111110101111100001111111110001000,
	240'b101100101111110011110101101100111010100110101010101010011101101011111111111111111111011010111000101001111010101110111101110000001010110110100111101100011110111111111111111111111111111111111111111111111111111111111001111101001111111110001000,
	240'b101100101111110011110101101100111010100110101010101010011010111011100111111111111111111111101000101100101010011010100110101001101010011010101101110111111111111111111111111111111111111111111111111111111111111111111011111101111111111110001000,
	240'b101100011111110011110101101100111010100110101010101010101010100010110100111011001111111111111111111011011100100110111001101110001100010111100111111111111111111111111111111111111111111111111111111111111111111111111100111110011111111110000111,
	240'b101100011111110011110101101100111010100110101010101010101010101010101000101101011110100011111111111111111111111111111001111110001111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111110001111111110000111,
	240'b101100011111110011110101101100111010100110101010101010101010101010101010101010001011000011011110111111101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110111100101111111110000111,
	240'b101100011111110011110101101100111010100110101010101010011010100110101010101010101010100110101011110010001111000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011101111010111111111110000111,
	240'b101100011111110011110101101100111010100010101010101100001010110010101001101010101010101010101001101010001011001011010010111100101111111111111111111111111111111111111111111111111111111111111111111111111110111110110111111010111111111110000111,
	240'b101100011111110011110101101100101010111111011110111101111110100010111000101010011010101010101010101010101010100110101000101100101100101011100000111100101111101011111110111111111111111111111100111001101011100010101011111011001111111110000111,
	240'b101100101111110011110101101100011101010111110110110100011110111011100111101011001010101010101010101010101010101010101010101010011010011110101010101100001011101011000011110001111100100110111110101011001010100010101101111011001111111110001000,
	240'b101100101111110011110101101101001110101111010101101000111100001011110110101100111010100110101010101010101010101010101010101010101010101010101010101010011010100010101000101001111010011110101000101010011010100110101101111011001111111110001000,
	240'b101100101111110011110101101101011110101111001110101001011011110011110111101101001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101101111011001111111110001000,
	240'b101100101111110011110101101101011110101111001111101001011011110111110111101101001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101101111011001111111110001000,
	240'b101100101111110011110101101101001110101111010010101000101100000011110111101101001010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101101111011001111111110001000,
	240'b101100011111110011110101101100011101100111110010110001101110011111101011101011011010100110101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100110101101111011001111111110000111,
	240'b101010001111011111111011101101111011000111100111111110111111000010111101101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010100010110000111100111111111110000101,
	240'b100110111110011011111111110111001010101010101010101101001010110110100110101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101010001010100010101000101001111010100111010001111111111111011010000110,
	240'b110011001100100011111111111111111110100011011001110110001101100011011001110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111011001110110011110010011111101111111111101001010011010,
	240'b111101101101000011010001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110101100001010111000,
	240'b111110011111010011001001101111001101001011101010111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111101011111000010110010101111100011000000,
	240'b111110111111000111100000101001111010110010111011101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111001011000010101010111001101111111111000010,
	240'b111100111111111111110110101011111001110010101001101010101010101010101010101010101010101110101011101010111010101110101011101010101010101010101010101010101010101010101011101010111010101110101011101010101001111010011111111000011111100010111000,
	240'b111101011111011111000100110100001110110011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111000011010100101110011110011110111010,
	240'b111100101100011011100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111010111011111010110011,
	240'b101111011100111111111111111101101011000010001110100011011000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100011011000110110001101100011011000101010001000100010011010010111101110111111111101110010010011,
	240'b100111001110101111111111101000100100111101001111010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010011100110101010001011011011100100110010001011111110101111101110000110,
	240'b101011001111101111110011011010110101000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010010100000001110101111111000111100001000100001011011111000011111111110000110,
	240'b101100101111111011101011011001100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001010110110011101100110001101011101111111101100101100001110101111111111110001000,
	240'b101100101111111011101011011001110101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011110111000001001011001000111100010001110010101101100110101101111111110001000,
	240'b101100101111111011101011011001110101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011111111000001001010101001011100010001110010001101101110101101111111110001000,
	240'b101100101111111011101011011001110101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001101011111111000001001010001001010100001111110010001101101110101101111111110001000,
	240'b101100011111111011101011011001110101001001010011010100000101000001010000010100000101000001010001010100110101010101010101010101010101010101010101010101010101010001011010110110111010110101001100100111111110001101100111110101111111111110000111,
	240'b101100011111111011101011011001110100111101100100100110001011011010110100101010101001011001111100011001000101001101010000010100110101010101010101010101010101010101010001101000111111010111001011111100101011000001011001110110001111111110000111,
	240'b101100011111111011101011011000110111100111011110111111111111111111111111111111111111111111111011111001001011111110000111010111010101000101010100010101010101010101010100010110101010001011010011101010100101110001011010110110011111111110000111,
	240'b101100011111111011101000011111001110001111111111111111111111111111111111111111111111111111111111111111111111111111111100110110011000111101011000010100100101010101010101010101000101000101010011010100010101001101011011110110011111111110000111,
	240'b101100011111110111101000110000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111000101011011010101000101010101010101010101010101010100010101010101010001011011110110011111111110000111,
	240'b101100011111110011110000111011101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111001101000010001010001010101000101010101010101010101010101010001011011110110011111111110000111,
	240'b101100101111110011110101111110011111111111111111111111111111111111111111111111111111111111111111111111111111010011011011110110011111000011111111111111111111010010010010010100100101010001010101010101010101010001011011110110011111111110001000,
	240'b101100101111110011110101111110001111111111111111111111111111111111111111111111111111111111111110110000010111010001011101010111000110111010110010111110101111111111110110100100010101000001010101010101010101010001011011110110011111111110001000,
	240'b101100101111110011110011111101111111111111111111111111111111111111111111111111111111111110110101010101100100111101001111010011110100111101010001101000011111110111111111111100010111111001010000010101010101010001011011110110011111111110001000,
	240'b101100101111110011110000111011101111111111111111111111111111111111111111111111111110001001100001010100000110001010011011101000010110101001010000010101111100111011111111111111111110000001100110010100100101010001011011110110011111111110001000,
	240'b101100101111110111101011110110101111111111111111111111111111111111111111111111111010101101001110010111001100101011111111111111111101110001100111010011011001001011111111111111111111111110111001010101000101001101011011110110011111111110001000,
	240'b101100011111110111100111110000001111111111111111111111111111111111111111111111111000101101001011100000101111111011111111111111111111111110011001010011000111011011111001111111111111111111111000100000000100111101011011110110011111111110000111,
	240'b101100011111111011100110100111101111110111111111111111111111111111111111111111111000001001001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111110011000101011001011010110110011111111110000111,
	240'b101100011111111011101000011111011110110111111111111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111110100111111001010111110110011111111110000111,
	240'b101100011111111011101010011001111100100011111111111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111111111011101001011001110110001111111110000111,
	240'b101100011111111011101011011000101001000011111110111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111111111110011101101011110101101111111110000111,
	240'b101100011111111011101011011001010101111111100100111111111111111111111111111111111000000101001010100100011111111111111111111111111111111110101001010011010111000111110011111111111111111111111111111111111111110110001111110101001111111110000111,
	240'b101100101111111011101011011001110100111010100000111111111111111111111111111111111000001101001010100100001111111111111111111111111111111110101000010011010111000111110100111111111111111111111111111111111111111110110100110101001111111110001000,
	240'b101100101111111011101011011001110101000001100000110111101111111111111111111111111001000001001011011110101111101011111111111111111111111110001111010010110111101011111011111111111111111111111111111111111111111111010100110110111111111110001000,
	240'b101100101111111011101011011001110101001001010000100010011111101011111111111111111011100001010000010101101011000011110111111110101100001101011101010011101001111111111111111111111111111111111111111111111111111111101010111000011111111110001000,
	240'b101100101111111011101011011001110101001001010100010101001011010111111111111111111110111001110000010011110101011101111100100000010101101101001111011000101101111111111111111111111111111111111111111111111111111111110011111010101111111110001000,
	240'b101100101111111011101011011001110101001001010101010100110101111011001111111111111111111111010000011001000100111001001110010011010100111001011011101111101111111111111111111111111111111111111111111111111111111111110110111011111111111110001000,
	240'b101100011111111011101011011001110101001001010101010101010101000101101001110110001111111111111111110111001001010001110011011100001000101111010000111111111111111111111111111111111111111111111111111111111111111111111000111100101111111110000111,
	240'b101100011111111011101011011001110101001001010101010101010101010101010001011010101101001011111111111111111111111111110011111100011111111011111111111111111111111111111111111111111111111111111111111111111111111111110111111100001111111110000111,
	240'b101100011111111011101011011001110101001001010101010101010101010101010101010100010110001010111101111111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101101111001001111111110000111,
	240'b101100011111111011101011011001110101001001010100010100110101010001010101010101010101001001010110100100101110010011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111011110101101111111110000111,
	240'b101100011111111011101011011001110101000001010110011000010101100101010010010101010101010101010100010100000110011010100110111001011111111111111111111111111111111111111111111111111111111111111111111111111101111101101111110101101111111110000111,
	240'b101100011111111011101011011001010101111010111101111011111101000101110001010100100101010101010101010101010101001001010001011001011001010011000010111001101111010011111100111111111111111111111000110011100111000101011000110110011111111110000111,
	240'b101100101111111011101011011000111010101111101101101000111101110011001110010110000101010001010101010101010101010101010101010100110101000001010101011000010111010110000111100100001001001101111100010110100101000001011011110110011111111110001000,
	240'b101100101111111011101010011010011101011010101011010001111000011011101110011010000101001001010101010101010101010101010101010101010101010101010100010100110101000101010000010011110100111101010001010101000101010001011011110110011111111110001000,
	240'b101100101111111011101010011010111101011110011111010010110111101111101110011010100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110001000,
	240'b101100101111111011101010011010111101011110011111010010110111101111101110011010100101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110001000,
	240'b101100101111111011101010011010101101011110100110010001101000000011101110011010000101001001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110001000,
	240'b101100011111111011101011011000111011010011100110100011101100111111010110010110100101010001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001011011110110011111111110000111,
	240'b101010001111100011110110011011110110001111001111111101111110000101111011010100100101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101001001100010111001111111111110000101,
	240'b100110111110011011111111101110010101011001010101011010000101101101001110010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101010010100100111111101111011010000110,
	240'b110011001100100011111111111111111101000110110010101100001011000110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111011001110110011101100111100100111111010111111111101001010011010,
	240'b111101101101000011010001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110110101100001010111000,
	240'b111110011111010011001001101111001101001011101010111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111110101111101011111010111101011111000010110010101111100011000000,
	240'b111110111111000111100000101001111010110010111011101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111011011110110111101101111001011000010101010111001101111111111000010,
};
assign data = picture[addr];
endmodule