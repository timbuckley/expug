defmodule TodoTestd do
  use ExUnit.Case
  @moduletag :pending

  # test "Most everything"
  # test "Track line/column in tokens"
  # test "comma-delimited attributes"
  # test "Multiline attributes"
  # test "HTML escaping"
  # test "boolean value (`textarea(spellcheck=@spellcheck)`)"
  # test "Auto-end of `cond do` etc"

  # Priority:
  test "value-less attributes (`textarea(spellcheck)`)"
  test "`.` raw text (like `script.`)"
  test "!= unescaped code"

  # Lower priority:
  test "Showing HTML comments with //"
  test "Nesting HTML comments"
  test "Self-closing tag syntax (img/)"
  test "Block expansion (li: a)"
  test "HTML in Pug templates"
end
