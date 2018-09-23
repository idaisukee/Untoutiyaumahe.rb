class Untoutiyaumahe

	def self.untoutiyaumahe(num, array)
		sums = Array.new

		Range.new(1, array.size).each do |k|
			sums << array.take(k).inject(:+)
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
