defmodule BulmaComponents.List do
  @moduledoc """
  List component.
  """
  use Phoenix.Component

  @doc """
  Renders an unordered list.

  ## Examples

      <.list>
        <:item>Apple</:item>
        <:item>Banana</:item>
        <:item>Cherry</:item>
      </.list>

  """
  attr :style_type, :string,
    default: "disc",
    values: ~w(disc circle square decimal),
    doc: "The list style type"

  attr :items, :any, default: [], doc: "The list items"
  attr :rest, :global

  def list(assigns) do
    ~H"""
    <ul class={["list"] + @rest}>
      <%= for item <- @items do %>
        <li><%= item %></li>
      <% end %>
    </ul>
    """
  end

  @doc """
  Renders a definition list.

  ## Examples

      <.definition_list>
        <:item title="Title"><%= @post.title %></:item>
        <:item title="Views"><%= @post.views %></:item>
      </.definition_list>

  """

  slot :item, required: true do
    attr(:title, :string, required: true)
  end

  def definition_list(assigns) do
    ~H"""
    <dl>
      <%= for item <- @item do %>
        <dt class="is-bold"><%= item.title %></dt>
        <dd><%= render_slot(item) %></dd>
      <% end %>
    </dl>
    """
  end
end
