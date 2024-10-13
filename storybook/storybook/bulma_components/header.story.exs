defmodule Storybook.BulmaComponents.Header do
  use PhoenixStorybook.Story, :component
  alias BulmaComponents.{Button, Header}

  def function, do: &Header.header/1
  def imports, do: [{Button, button: 1}]

  def size_variations do
    Enum.map(1..7, fn size ->
      %Variation{
        id: String.to_atom("size_#{size}"),
        attributes: %{
          size: size
        },
        slots: ["Title #{size}"]
      }
    end)
  end

  def variations do
    size_variations() ++
      [
        %Variation{
          id: :with_a_subtitle,
          slots: [
            "Title",
            "<:subtitle>I'm a header subtitle</:subtitle>"
          ]
        },
        %Variation{
          id: :with_actions,
          slots: [
            "Title",
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
