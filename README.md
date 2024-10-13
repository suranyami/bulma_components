# BulmaComponents

HEEx components for the [Bulma](https://bulma.io/) CSS framework.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bulma_components` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bulma_components, "~> 0.2.1"}
  ]
end
```

## Working with `gettext`

You will need to add the following config into your `config.exs` file:

```elixir
config :bulma_components, gettext_backend: Myapp.Gettext
```

This is so we can use `Gettext` in the `flash` messages, `submit` buttons, etc.

## Contributing

For those planning to contribute to this project, you can run the storybook with the following command:

    $ cd storybook; mix phx.server

## License

MIT License. Copyright (c) 2022 Michael A. Crumm Jr.

