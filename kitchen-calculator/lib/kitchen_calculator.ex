defmodule KitchenCalculator do
  def get_volume({_unit, volume}), do: volume

  def to_milliliter({unit, volume}) do
    {:milliliter, volume * factor(unit)}
  end

  def from_milliliter({_base_unit, base_volume}, unit) do
    {_unit, volume} = to_milliliter({unit, 1})

    {unit, base_volume / volume}
  end

  def convert(volume_pair, unit) do
    {_unit, volume} = to_milliliter(volume_pair)

    from_milliliter({:milliliter, volume}, unit)
  end

  defp factor(:milliliter), do: 1
  defp factor(:teaspoon), do: 5
  defp factor(:tablespoon), do: 15
  defp factor(:fluid_ounce), do: 30
  defp factor(:cup), do: 240
end
