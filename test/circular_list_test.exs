defmodule CircularListTest do
  use ExUnit.Case

  test "rotates list of integers" do
    cl0 = CircularList.new()
    cl1 = CircularList.push(cl0, 1)
    cl2 = CircularList.push(cl1, 2)
    cl3 = CircularList.push(cl2, 3)

    assert CircularList.current(cl3) == 1
    cl3_a = CircularList.rotate(cl3)

    assert CircularList.current(cl3_a) == 2

    cl3_b = CircularList.rotate(cl3_a)
    assert CircularList.current(cl3_b) == 3

    cl3_c = CircularList.rotate(cl3_b)
    assert CircularList.current(cl3_c) == 1
  end

  test "removes an integer" do
    cl0 =
      CircularList.new()
      |> CircularList.push(:a)
      |> CircularList.push(:b)
      |> CircularList.push(:c)

    index = CircularList.get_index(cl0)
    cl1 = CircularList.remove(cl0, index)
    assert CircularList.current(cl1) == :b
  end

  test "remove doesn't break things if out of bounds" do
    cl0 =
      CircularList.new()
      |> CircularList.push(:a)
      |> CircularList.push(:b)
      |> CircularList.push(:c)

    index = CircularList.get_index(cl0)
    cl1 = CircularList.remove(cl0, index)
    assert CircularList.remove(cl1, index) == cl1
  end
end
