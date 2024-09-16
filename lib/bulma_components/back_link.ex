defmodule BulmaComponents.BackLink do
  @moduledoc """
  Back link component.
  """
  use Phoenix.Component
  import BulmaComponents.Icon

  @doc """
  Renders a back navigation link.

  ## Examples

      <.back navigate={~p"/posts"}>Back to posts</.back>

  """
  attr(:navigate, :any, required: true)
  slot(:inner_block, required: true)

  def back(assigns) do
    ~H"""
    <.link navigate={@navigate} class="button is-light">
      <.icon name="arrow-left-solid" />
      <%= render_slot(@inner_block) %>
    </.link>
    """
  end
end
