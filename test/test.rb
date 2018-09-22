require 'bundler/setup'
Bundler.require
base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir  = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")

require(File.join(lib_dir, 'Untoutiyaumahe.rb'))
class SampleTest < Test::Unit::TestCase
	def test_untoutiyaumahe
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2]), [2, 7])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2, 3]), [3, 4])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2, 3, 4]), [4, 0])
	end

	def test_inverse_untoutiyaumahe
		assert_equal(Untoutiyaumahe.inverse_untoutiyaumahe([1, 2], [2, 7]), 10)
		assert_equal(Untoutiyaumahe.inverse_untoutiyaumahe([1, 2, 3], [3, 4]), 10)
		assert_equal(Untoutiyaumahe.inverse_untoutiyaumahe([1, 2, 3, 4], [4, 0]), 10)
	end
end
