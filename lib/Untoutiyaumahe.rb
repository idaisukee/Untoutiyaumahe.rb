class Untoutiyaumahe

	def self.untoutiyaumahe(num, array)

		sums = array.map.with_index do |v, k|
			array.take(k + 1).inject(:+)
		end

		deltas = sums.map do |i|
			num - i
		end

		positives = deltas.select do |i|
			0 <= i
		end

		toukentai = positives.size

		if toukentai == 0 then
			hisiri = num
		else
			hisiri = positives[-1]
		end
		[toukentai, hisiri]
	end

	def self.inverse_untoutiyaumahe(array, untoutiyaumahe)
		toukentai = untoutiyaumahe[0]
		hisiri = untoutiyaumahe[1]

		num = array.take(toukentai).inject(:+) + hisiri
	end
end
