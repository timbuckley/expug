defmodule Expug.Stringifier do
  @moduledoc """
  Stringifies builder output.

  ## Also see
  - `Expug.Builder` builds the line map used by this stringifier.
  - `Expug.to_eex/1` is the main entry point that uses this stringifier.
  """

  def stringify(%{} = doc) do
    {max, doc} = Map.pop(doc, :lines)
    {_, doc} = Map.pop(doc, :doctype)
    list = doc |> Map.to_list() |> Enum.sort()
    s(list, 0, max)
  end

  def s([{line, elements} | rest], last, max) do
    "" <>
    padding(line, last) <>
    Enum.join(elements, ~S[<%= "\n" %>]) <>
    "\n"
    <> s(rest, line, max)
  end

  def s([], _last, _max) do
    ""
  end

  def padding(line, last) do
    if last + 1 == line do
      ""
    else
      "<%" <> newlines(line - last - 1) <> "%>"
    end
  end

  def newlines(n) when n <= 0 do
    ""
  end

  def newlines(n) do
    "\n" <> newlines(n - 1)
  end
end