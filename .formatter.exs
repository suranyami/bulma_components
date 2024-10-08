# Used by "mix format"
[
  import_deps: [:phoenix],
  plugins: [Phoenix.LiveView.HTMLFormatter],
  inputs: [
    "*.{heex,ex,exs}",
    "{dev, mix,.formatter}.exs",
    "{config,lib,storybook,test}/**/*.{ex,exs}",
    "storybook/**/*.exs",
    "storybook/**/*.exs"
  ]
]
