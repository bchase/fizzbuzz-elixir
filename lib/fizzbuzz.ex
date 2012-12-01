# $ mix run && mix fizzbuzz

defmodule Mix.Tasks.Fizzbuzz do
  def fizz_or_buzz(x) when rem(x,3) == 0 and rem(x,5) == 0, do: IO.puts('FizzBuzz')
  def fizz_or_buzz(x) when rem(x,3) == 0, do: IO.puts('Fizz')
  def fizz_or_buzz(x) when rem(x,5) == 0, do: IO.puts('Buzz')
  def fizz_or_buzz(x), do: IO.puts(x)

  def run(_) do
    Enum.each List.range(1, 100), fizz_or_buzz(&1)
  end
end
