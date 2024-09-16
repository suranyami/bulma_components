defmodule BulmaComponents.Hero do
  @moduledoc """
  An imposing hero banner to showcase something
  """
  use Phoenix.Component

  @doc """
  Renders a simple form.

  ## Examples

      <.hero title="Hero" subtitle="Subtitle">
        <p>Some extra content.</p>
      </.hero>
  """
  attr :title, :string, required: true, doc: "The main title"
  attr :subtitle, :string, required: true, doc: "The subtitle"

  attr :rest, :global
  slot :inner_block, required: false

  def hero(assigns) do
    ~H"""
    <section class="hero">
      <div class="hero-body">
        <p class="title work-sans is-bold"><%= @title %></p>
        <p class="subtitle work-sans"><%= @subtitle %></p>
      </div>
    </section>
    """
  end
end
