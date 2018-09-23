require 'bundler/setup'
Bundler.require
base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir  = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")

require(File.join(lib_dir, 'Untoutiyaumahe.rb'))
class SampleTest < Test::Unit::TestCase
	def test_untoutiyaumahe
		l = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
		nl = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
		assert_equal(Untoutiyaumahe.untoutiyaumahe(0, [1, 2]), [0, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(2, [1, 2]), [1, 1])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(3, [1, 2]), [2, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(3, [1, 2, 3]), [2, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(3, [1, 2, 3, 4]), [2, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(3, [1, 2, 3, 4, 5]), [2, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(4, [1, 2, 3]), [2, 1])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2]), [2, 7])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2, 3]), [3, 4])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2, 3, 4]), [4, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(10, [1, 2, 3, 4]), [4, 0])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(20, [1, 2, 3, 4]), [4, 10])
		assert_equal(Untoutiyaumahe.untoutiyaumahe(1, l), [0, 1])
	end

	def test_inverse_untoutiyaumahe
		assert_equal(Untoutiyaumahe.inverse_untoutiyaumahe([1, 2], [2, 7]), 10)
		assert_equal(Untoutiyaumahe.inverse_untoutiyaumahe([1, 2, 3], [3, 4]), 10)
		assert_equal(Untoutiyaumahe.inverse_untoutiyaumahe([1, 2, 3, 4], [4, 0]), 10)
	end
end
