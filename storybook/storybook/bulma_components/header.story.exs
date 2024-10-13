defmodule Storybook.BulmaComponents.Header do
  use PhoenixStorybook.Story, :component
  alias BulmaComponents.{Button, Header}

  def function, do: &Header.header/1
  def imports, do: [{Button, button: 1}]

  def variations do
    [
      %Variation{
        id: :default,
        slots: [
          "Hello World"
        ]
      },
      %Variation{
        id: :with_a_subtitle,
        slots: [
          "Hello World",
          "<:subtitle>I'm a header subtitle</:subtitle>"
        ]
      },
      %Variation{
        id: :with_actions,
        slots: [
          "Hello World",
          "<:subtitle>I'm a header subtitle</:subtitle>",
          """
          <:actions>
            <.button>Link</.button>
          </:actions>
          """
        ]
      }
    ]
  end
end
