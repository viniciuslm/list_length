defmodule ListLength do
  def call([]), do: {:error,"Lista vazia"}

  def call(list), do: {:ok,count(list, 0)}

  defp count([], acc) do
    acc
  end

  defp count([_head | tail], acc) do
    acc = acc + 1
    count(tail, acc)
  end
end
