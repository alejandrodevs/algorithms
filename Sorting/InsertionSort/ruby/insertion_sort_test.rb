require 'minitest/autorun'
require './insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_sort
    assert_equal([0],             sort([0]))
    assert_equal([0, 1],          sort([1, 0]))
    assert_equal([0, 1, 2],       sort([2, 0, 1]))
    assert_equal([0, 1, 2, 3],    sort([3, 2, 0, 1]))
    assert_equal([0, 1, 2, 3, 4], sort([3, 2, 4, 0, 1]))
  end
end
