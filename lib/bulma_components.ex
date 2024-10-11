defmodule BulmaComponents do
  @moduledoc """
  Imports all BulmaComponents.
  """

  def __using__(_opts) do
    quote do
      gettext_backend = Application.get_application(:bulma_components, :gettext_backend)
      use Gettext, backend: gettext_backend

      import BulmaComponents.BackLink
      import BulmaComponents.Button
      import BulmaComponents.Colors
      import BulmaComponents.Flash
      import BulmaComponents.Footer
      import BulmaComponents.Form
      import BulmaComponents.Header
      import BulmaComponents.Hero
      import BulmaComponents.Icon
      import BulmaComponents.Input
      import BulmaComponents.JsCommands
      import BulmaComponents.List
      import BulmaComponents.Modal
      import BulmaComponents.Navbar
      import BulmaComponents.Table
    end
  end
end
