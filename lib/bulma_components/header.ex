defmodule BulmaComponents.Header do
  @moduledoc """
  List component.
  """
  use Phoenix.Component

  # use BulmaComponents, :verified_routes

  @doc """
  Renders a header with title.
  """
  attr(:size, :integer, default: 1)
  attr(:class, :string, default: nil)

  slot(:inner_block, required: true)
  slot(:subtitle)
  slot(:actions)

  def header(assigns) do
    ~H"""
    <header class={[@actions != [] && "flex items-center justify-between gap-6", @class]}>
      <div>
        <h1 class={"is-size-#{@size}"}>
          <%= render_slot(@inner_block) %>
        </h1>
        <p :if={@subtitle != []}>
          <%= render_slot(@subtitle) %>
        </p>
      </div>
      <div class="flex-none"><%= render_slot(@actions) %></div>
    </header>
    """
  end
end
