defmodule Sample.Calendar do
    def is_leap_year(year) when rem(year, 400) == 0, do: true
    def is_leap_year(year) when rem(year, 100) == 0, do: false
    def is_leap_year(year) when rem(year, 4) == 0, do: true
    def is_leap_year(year), do: false

    def day_abbreviation(day) do
        cond do
            day == :Monday ->"M"
            day == :Tuesday -> "Tu"
            day == :Wednesday -> "W"            
        end
    end
end

