defmodule Lasagna do
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(elapsed_time) do
    expected_minutes_in_oven() - elapsed_time
  end

  def preparation_time_in_minutes(layers_count) do
    layers_count * 2
  end

  def total_time_in_minutes(layers_count, elapsed_time) do
    elapsed_time + preparation_time_in_minutes(layers_count)
  end

  def alarm do
    "Ding!"
  end
end
