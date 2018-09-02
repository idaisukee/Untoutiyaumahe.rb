class Untoutiyaumahe

	def self.untoutiyaumahe(num, array)
		sums = array.map do |i|
			array.take(i).inject(:+)
		end
		deltas = sums.map do |i|
			num - i
		end
		positives = deltas.select do |i|
			0 <= i
		end
		toukentai = positives.size
		hisiri = positives[-1]
		[toukentai, hisiri]
	end

	def self.inverse_untoutiyaumahe(array, untoutiyaumahe)
		toukentai = untoutiyaumahe[0]
		hisiri = untoutiyaumahe[1]

		num = array.take(toukentai).inject(:+) + hisiri
	end
end
