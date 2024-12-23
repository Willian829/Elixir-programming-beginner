defmodule Functional do
  def hello do
    %{name: "Willian", age: 20, cpf: "123.456.789-00"}
    |> put_map(:name, "Steve")
    |> put_map(:age, 30)
    |> Enum.map(fn { key, value} -> value end)
  end

  defp put_map(map, key, value), do: Map.put(map, key, value)
  defp delete_map_value(map, key), do: Map.delete(map, key)
end
