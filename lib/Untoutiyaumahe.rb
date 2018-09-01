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
end

