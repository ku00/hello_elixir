defmodule Makuro do
  defmacro twice(do: content) do
    quote do
      unquote(content)
      unquote(content)
    end
  end

  #IO.puts "just inside defmodule"

  [
    {"mon", "月"}, {"tue", "火"}
  ]
  |> Enum.map fn {en, ja} ->
    def in_japanese(unquote en) do
      unquote ja
    end
  end

# https://github.com/Joe-noh/colorful/blob/master/lib/colorful/color.ex

  File.read!("./priv/persons.txt")
  |> String.split
  |> IO.inspect
  |> Enum.map(fn {name, age} ->
    def from_name(unquote name) do
      unquote age
    end
  end)
end
