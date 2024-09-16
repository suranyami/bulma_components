defmodule BulmaComponents.Colors do
  @moduledoc """
  Bulma color palette.
  """
  @theme [
    :primary,
    :link,
    :info,
    :success,
    :warning,
    :danger
  ]

  @monochrome [
    :white,
    :light,
    :dark,
    :black,
    :text,
    :ghost
  ]

  @colors @theme ++ @monochrome

  @doc """
  Returns a list of Bulma `$colors` as atoms.

  ## Examples

      iex> BulmaComponents.colors()
      #{inspect(@colors)}
  """
  def colors, do: @colors

  @doc """
  Returns a list of monochrome colors as atoms.

  ## Examples

      iex> BulmaComponents.monochrome()
      #{inspect(@monochrome)}
  """
  def monochrome, do: @monochrome

  @doc """
  Returns a list of theme colors as atoms.

  ## Examples

      iex> BulmaComponents.theme()
      #{inspect(@theme)}
  """
  def theme, do: @theme
end
