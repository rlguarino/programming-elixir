fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, v -> v
end

results = fizz_buzz.(1,2,3)
IO.inspect(results)
results = fizz_buzz.(0,0,3)
IO.inspect(results)
results = fizz_buzz.(1,0,3)
IO.inspect(results)
results = fizz_buzz.(0,2,3)
IO.inspect(results)
