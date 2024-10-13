defmodule Storybook.BulmaComponents.List do
  use PhoenixStorybook.Story, :component
  import BulmaComponents.List, only: [list: 1]

  def function, do: &List.list/1
  def imports, do: [{List, [list: 1]}]

  def variations do
    [
      %Variation{
        id: :default,
        slots: [
          ~s|<:item title="Title">Elixir</:item>|,
          ~s|<:item title="Rating">5/5</:item>|
        ]
      }
    ]
  end
end
