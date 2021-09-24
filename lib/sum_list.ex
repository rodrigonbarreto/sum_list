defmodule SumList do

  def call(list), do: sum(list, 0)

  def call_enum(list), do: Enum.sum(list)

  def call_map(list), do: Enum.map(list, fn x -> x * 2 end)

  defp sum([], acc) do
    acc
  end

  defp sum([head| tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end
