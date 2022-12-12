defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)
  def max(list) when is_list(list), do: max(list, 0)
  def max([], value), do: value
  def max([head |tail], value), do:
end

result = MyList.mapsum [1, 2, 3], &(&1 * &1)
IO.inspect result
IO.inspect result == 14
