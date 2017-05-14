defmodule JournalServer do
  import Exredis
  def get(a), do: start_link |> elem(1) |> query ["GET", a]
  def set(a,b), do: start_link |> elem(1) |> query ["SET", a, b]
end
