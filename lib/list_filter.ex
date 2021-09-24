defmodule ListFilter do

  def call(list) do
     list
      |> get_only_numbers()
      |> clean_list
      |> get_only_even
  end

  defp get_only_numbers(list) do
    Enum.map(list, fn string ->
      parse_to_ingeger(string)
    end)
  end

  def parse_to_ingeger(arg) when is_number(arg), do: arg
  def parse_to_ingeger(arg) when is_bitstring(arg) do
    case Integer.parse(arg) do
      {int, _rest} -> int
      :error -> nil
    end
  end

  defp clean_list(list) do
    Enum.reject(list, fn x -> is_nil(x) end)
  end


  defp get_only_even(list) do
    Enum.filter(list, fn x -> rem(x, 2) != 0 end)
  end
end
