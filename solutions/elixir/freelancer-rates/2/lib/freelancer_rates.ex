defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount / 100 * discount
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate(apply_discount(hourly_rate, discount)) * 22
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / apply_discount(hourly_rate, discount)
  end
end
