# Expug

> Indented shorthand HTML templates for Elixir

Expug is a template language based on [Pug][] (formerly known as [Jade][]).
It lets you write HTML as indented shorthand, inspired by Haml, Slim, Pug/Jade, and so on.


```jade
doctype html
html
  meta(charset="utf-8")
  title Hello, world!
body
  a(href=@link)
    | This is a link
```

[![Status](https://travis-ci.org/rstacruz/expug.svg?branch=master)](https://travis-ci.org/rstacruz/expug "See test builds")

[Pug]: http://pugjs.org/
[Jade]: http://jade-lang.com/

## Installation

Add expug to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:expug, "~> 0.8"}]
end
```

Also see [phoenix_expug](https://github.com/rstacruz/phoenix_expug) for Phoenix integration.

## Syntax

Use CSS-like selectors for elements, and express your nesting through indentations.

```jade
ul.links
  li
    a(href="/") This is a link
```

Read more: [Syntax](https://hexdocs.pm/expug/syntax.html)

## Why should I use it?

Read on [this comparison](https://hexdocs.pm/expug/prior_art.html) to see how Expug compares to other similar libraries.

## Thanks

**expug** © 2016+, Rico Sta. Cruz. Released under the [MIT] License.<br>
Authored and maintained by Rico Sta. Cruz with help from contributors ([list][contributors]).

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT]: http://mit-license.org/
[contributors]: http://github.com/rstacruz/expug/contributors
