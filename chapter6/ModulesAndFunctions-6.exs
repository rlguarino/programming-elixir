defmodule Chop do
  defp middle(lower..upper) do
    lower + div(upper-lower, 2)
  end
  defp doGuess(actual, guess, lower..upper) when actual in lower..upper and guess == actual do
    IO.puts "It is #{guess}! in #{lower}..#{upper}"
    guess
  end
  defp doGuess(actual, guess, lower..upper) when actual in lower..upper and guess < actual do
    IO.puts "<Is it #{guess}? in #{lower}..#{upper}"
    doGuess(actual, middle(guess..upper), guess..upper)
  end
  defp doGuess(actual, guess, lower..upper) when actual in lower..upper and guess > actual do
    IO.puts ">Is it #{guess}? in #{lower}..#{upper}"
    doGuess(actual, middle(lower..guess), lower..guess)
  end
  def guess(actual, lower..upper) when actual in lower..upper do
    doGuess(actual, middle(lower..upper), lower..upper)
  end
end
