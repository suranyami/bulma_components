defmodule Storybook.BulmaComponents.Input do
  use PhoenixStorybook.Story, :component
  alias BulmaComponents.{Form, Input}

  def function, do: &Input.input/1
  def imports, do: [{Form, [simple_form: 1]}]

  def template do
    """
    <.simple_form :let={f} for={%{}} as={:story} class="w-full">
      <.psb-variation-group field={f[:field]}/>
    </.simple_form>
    """
  end

  @attrs [
    [
      :text,
      %{
        color: "primary",
        icon: "font",
        icon_color: "error",
        icon_align: :left,
        errors: ["This is an error message"]
      }
    ],
    [
      :password,
      %{
        color: "danger",
        icon: "lock",
        icon_color: "danger",
        icon_align: :left,
        type: "password"
      }
    ],
    [
      :date,
      %{
        color: "info",
        icon: "calendar",
        icon_color: "info",
        icon_align: :left,
        type: "date"
      }
    ],
    [:"datetime-local", %{icon: "calendar"}],
    [:email, %{value: "fred@example.com", icon: "envelope", color: "link"}],
    [:textarea, %{color: "info", rows: 4}],
    [:number, %{}],
    [:color, %{icon: "paintbrush"}],
    [:checkbox, %{}],
    [
      :select,
      %{
        icon: "globe",
        options: ["Option 1", "Option 2", "Option 3"]
      }
    ],
    [:file, %{icon: "upload"}],
    [:radio, %{icon: "check"}],
    [:range, %{icon: "sliders"}],
    [:search, %{icon: "search"}],
    [:tel, %{icon: "phone"}],
    [:url, %{icon: "link"}]
  ]

  def story_vars do
    for [type, type_attrs] <- @attrs do
      attrs =
        %{
          type: to_string(type),
          label: String.capitalize("#{type}")
        }
        |> Map.merge(type_attrs)

      id =
        "#{type}_#{UUID.uuid4()}"
        |> String.to_atom()

      %Variation{
        id: id,
        attributes: attrs
      }
    end
  end

  def variations do
    [
      %VariationGroup{
        id: :basic_inputs,
        variations: story_vars()
      }
    ]
  end
end
