defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(daily_rate(hourly_rate) * 22, discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    remove_discount(budget, discount) / hourly_rate / 8.0
  end

  defp remove_discount(after_discount, discount) do
    apply_discount(after_discount, discount * -1)
  end
end
