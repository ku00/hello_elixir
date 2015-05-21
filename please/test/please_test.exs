defmodule PleaseTest do
  use ExUnit.Case
  alias Please, as: Plz

  test "sushi" do
    assert Plz.give_me(:sushi) == "🍣"
  end

  test "neither sushi nor beer" do
    assert Plz.give_me(:hoge) == "❓"
  end

  test "count list" do
    assert Plz.count([1,2,3]) == 3
  end

  test "map list" do
    assert Plz.map([1,2,3], &(3 * &1)) == [3,6,9]
  end
end
