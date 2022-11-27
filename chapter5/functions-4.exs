prefix = fn p -> (fn other -> p <> " " <> other end) end

mrs = prefix.("Mrs")
IO.inspect mrs.("Smith")
IO.inspect prefix.("Elixir").("Rocks")
