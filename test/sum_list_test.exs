defmodule SumListTest do
  use ExUnit.Case

  # doctest SumList
describe "call/1" do
  test "returns the list sum" do
     list =  [1,2,3]
     resonse = list |> SumList.call()
     expected_response  = 6

     assert resonse == expected_response
  end
end

end
