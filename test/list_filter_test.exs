defmodule ListFilterTest do
  use ExUnit.Case

  # doctest ListFilterTest
  describe "call/1" do
    test "count list elements" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["1", "5", "6",9, 8]

      assert ListFilter.call(list1) ==  [1, 3, 43]
      assert ListFilter.call(list2) == [1,5,9]
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == []
    end
  end
end
