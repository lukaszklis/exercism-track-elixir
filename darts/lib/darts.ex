defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = :math.sqrt(x * x + y * y)

    cond do
      distance > 10 -> 0
      distance <= 1 -> 10
      distance <= 5 -> 5
      true -> 1
    end
  end
end
