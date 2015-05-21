defmodule Please do
  def give_me(:sushi), do: "🍣"
  def give_me(:beer),  do: "🍺"
  def give_me(_other), do: "❓"

  def pass_to_poison(arg) do
    Poison.decode(arg)
  end

  def count(list), do: count(list, 0)
  defp count([], acc), do: acc
  defp count([_h|t], acc) do
    count(t, acc+1)
  end

  # def reverse(list), do: reverse(list, [])

  # defp reverse()

  def map(list, f), do: map(list, f, [])
  defp map([], _f, acc), do: Enum.reverse(acc)
  defp map([h|t], f, acc) do
    map(t, f, [f.(h)|acc])
  end
end
