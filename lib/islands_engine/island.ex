defmodule IslandsEngine.Island do
  alias IslandsEngine.{Coordinate, Island}

  @enforce_keys [:coordinates, :hit_coordinates]
  defstruct [:coordinates, :hit_coordinates]

  def new(), do:
  %Island{coordinates: MapSet.new(), hit_coordinates: MapSet.new()}

  defp offsets(:square), do: [{0,0},{0,1},{1,0},{1,1}]

  defp offset(:atol), do: [{0,0},{0,1},{1,1},{2,0},{2,1}]

  defp offset(:dot), do: [{0,0}]

  defp offset(:l_shape), do: [{0,0},{1,0},{2,0},{2,1}]

  defp offset(:s_shape), do: [{0,1},{0,2},{1,0},{1,1}]

  defp offset(_), do: {:error, :invalis_island_type}

end
