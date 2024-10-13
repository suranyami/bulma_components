defmodule BulmaComponents.Modal do
  use Phoenix.Component
  import BulmaComponents.JsCommands
  alias Phoenix.LiveView.JS

  attr :id, :string, required: true
  attr :show, :boolean, default: false
  attr :on_cancel, JS, default: %JS{}
  slot :inner_block, required: true

  @doc """
  Renders a modal.

  ## Examples

      <.modal id="confirm-modal">
        This is a modal.
      </.modal>

  JS commands may be passed to the `:on_cancel` to configure
  the closing/cancel event, for example:

      <.modal id="confirm" on_cancel={JS.navigate(~p"/posts")}>
        This is another modal.
      </.modal>

  """
  def modal(assigns) do
    ~H"""
    <div
      class="modal"
      id={@id}
      phx-mounted={@show && show_modal(@id)}
      phx-remove={hide_modal(@id)}
      data-cancel={JS.exec(@on_cancel, "phx-remove")}
    >
      <div id={"#{@id}-bg"} aria-hidden="true" class="modal-background"></div>
      <.focus_wrap
        id={"#{@id}-container"}
        phx-window-keydown={JS.exec("data-cancel", to: "##{@id}")}
        phx-key="escape"
        phx-click-away={JS.exec("data-cancel", to: "##{@id}")}
      >
        <div
          class="modal-content"
          id={"#{@id}-content"}
          aria-labelledby={"#{@id}-title"}
          aria-describedby={"#{@id}-description"}
          role="dialog"
          aria-modal="true"
          tabindex="0"
        >
          <%= render_slot(@inner_block) %>
        </div>
      </.focus_wrap>
      <button
        class="modal-close is-large"
        phx-click={JS.exec("data-cancel", to: "##{@id}")}
        aria-label="close"
        type="button"
        aria-label="close"
      >
      </button>
    </div>
    """
  end

  def gettext(string), do: string
end
