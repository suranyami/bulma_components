defmodule BulmaComponents.List do
  use Phoenix.Component

  attr :style_type, :string,
    default: "disc",
    values: ~w(disc circle square decimal),
    doc: "The list style type"

  attr :items, :any, default: [], doc: "The list items"
  attr :rest, :global

  @doc """
  Renders an unordered list.

  ## Examples

      <.list>
        <:item>Apple</:item>
        <:item>Banana</:item>
        <:item>Cherry</:item>
      </.list>

  """
  def list(assigns) do
    ~H"""
    <ul class={["list"]}>
      <%= for item <- @items do %>
        <li><%= item %></li>
      <% end %>
    </ul>
    """
  end
end
