defmodule NumberToWord do
  use Application

  @digits %{
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"
  }

  @tens %{
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  @large_numbers %{
    3 => "thousand",
    6 => "million",
    9 => "billion",
    12 => "trillion",
    15 => "quadrillion",
    18 => "quintillion",
    21 => "sextillion",
    24 => "septillion",
    27 => "octillion",
    30 => "nonillion",
    33 => "decillion",
    36 => "undecillion"
  }

  def start(_, _) do
    run()
    {:ok, self()}
  end

  defp run() do
    IO.puts("Convert number to word")

    number = IO.gets("Enter a number: ") |> parse_input()

    result = convert(number)

    IO.puts("\n#{result}")
  end

  defp parse_input(:error) do
    IO.puts("Invalid input!")
    run()
  end

  defp parse_input(input) do
    {number, _} = input |> Integer.parse()

    number
  end

  defp separator(remainder) when remainder < 100, do: " and "
  defp separator(_), do: ", "

  @digits
  |> Map.to_list()
  |> Enum.each(fn {key, word} ->
    def convert(value) when value === unquote(key) do
      unquote(word)
    end
  end)

  @tens
  |> Map.to_list()
  |> Enum.each(fn {key, word} ->
    def convert(value) when value === unquote(key) do
      unquote(word)
    end
  end)

  def convert(value) when value < 100 do
    tens = div(value, 10) * 10
    remainder = rem(value, 10)
    format(tens, "", " ", remainder)
  end

  def convert(value) when value < 1000 do
    hundreds = div(value, 100)
    remainder = rem(value, 100)
    format(hundreds, " hundred", separator(remainder), remainder)
  end

  @large_numbers
  |> Map.values()
  |> Enum.zip(Stream.unfold(1000, fn acc -> {acc, acc * 1000} end))
  |> Enum.each(fn {suffix, m} ->
    def convert(value) when value < unquote(m) * 1000 do
      number = div(value, unquote(m))
      remainder = rem(value, unquote(m))
      format(number, " " <> unquote(suffix), separator(remainder), remainder)
    end
  end)

  defp format(number, illion, _, 0), do: [convert(number) | illion] |> List.to_string()

  defp format(number, illion, separator, remainder) do
    [convert(number), illion, separator | convert(remainder)] |> List.to_string()
  end
end
