defmodule MakuroTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  require Makuro

  test "twice" do
    output = capture_io fn ->
      Makuro.twice do: IO.puts "age"
    end
    assert output == "age\nage\n"
  end
end
