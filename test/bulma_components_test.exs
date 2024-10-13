defmodule BulmaComponentsTest do
  use ExUnit.Case
  alias BulmaComponents.Colors
  doctest BulmaComponents

  test "returns a list of colors" do
    colors = Colors.colors()
    assert :primary in colors
    assert :success in colors
    assert :black in colors
    assert :ghost in colors
  end
end
