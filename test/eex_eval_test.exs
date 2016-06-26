defmodule EexEvalTest do
  use ExUnit.Case

  def build(source, bindings \\ [], opts \\ []) do
    source
    |> Expug.Tokenizer.tokenize()
    |> Expug.Compiler.compile()
    |> Expug.Builder.build()
    |> Expug.Stringifier.stringify()
    |> String.replace(~r/raw\(/, "raw.(")
    |> EEx.eval_string(bindings, opts)
  end

  test "basic" do
    eex = build("""
    doctype html
    div
      span= @hello
    """, assigns: %{hello: "Sup"})

    assert eex == ~S"""
    <!doctype html>
    <div>
    <span>
    Sup
    </span>
    </div>
    """
  end

  test "attributes" do
    eex = build("""
    div(id=@id)
    """, assigns: %{id: "jabberwocky"}, raw: &(&1))

    assert eex == ~S"""
    <div id="jabberwocky"></div>
    """
  end

  test "true attributes" do
    eex = build("div(spellcheck=@spellcheck)",
      assigns: %{spellcheck: true}, raw: &(&1))

    assert eex == "<div spellcheck></div>\n"
  end

  test "false attributes" do
    eex = build("div(spellcheck=@spellcheck)",
      assigns: %{spellcheck: false}, raw: &(&1))

    assert eex == "<div></div>\n"
  end
end