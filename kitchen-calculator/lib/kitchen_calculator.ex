defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    unit = elem(volume_pair, 0)
    volume = elem(volume_pair, 1)

    milliliters =
      cond do
        unit == :cup -> 240
        unit == :fluid_ounce -> 30
        unit == :teaspoon -> 5
        unit == :tablespoon -> 15
        true -> 1
      end

    {:milliliter, volume * milliliters}
  end

  def from_milliliter(volume_pair, unit) do
    milliliter_volume = elem(volume_pair, 1)

    unit_milliliter_volume =
      {unit, 1}
      |> to_milliliter
      |> elem(1)

    {unit, milliliter_volume / unit_milliliter_volume}
  end

  def convert(volume_pair, unit) do
    milliliter_volume =
      volume_pair
      |> to_milliliter
      |> elem(1)

    from_milliliter({:milliliter, milliliter_volume}, unit)
  end
end
