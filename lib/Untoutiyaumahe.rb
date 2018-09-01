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
		[positives.size, positives[-1]]
	end

	def self.inverse_untoutiyaumahe(array, untoutiyaumahe)
		cls = untoutiyaumahe[0]
		order = untoutiyaumahe[1]

		array.take(cls).inject(:+) + order
	end
end
