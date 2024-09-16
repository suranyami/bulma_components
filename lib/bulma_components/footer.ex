defmodule BulmaComponents.Footer do
  @moduledoc """
  Footer components.
  """
  use Phoenix.Component
  import BulmaComponents.Icon

  @doc """
  Renders a footer with a list of links.
  """
  attr :links, :list, default: []

  def footer(assigns) do
    ~H"""
    <footer class="footer">
      <div class="content has-text-centered">
        <div class="level">
          <div class="level-left">
            <.icon name="linkedin" size={:large} color="brand" class="level-item" />
          </div>
        </div>
        <div class="level-left"><.icon name="instagram" size={:large} color="brand" /></div>

        <div class="level">
          <div class="level-left">
            <div class="level-item">Privacy Policy</div>
          </div>
          |
          <div class="level-right">
            <div class="level-item">Website Terms</div>
          </div>
        </div>
      </div>
    </footer>
    """
  end
end
