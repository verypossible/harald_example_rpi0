defmodule HaraldExampleRpi0Test do
  use ExUnit.Case
  doctest HaraldExampleRpi0

  test "greets the world" do
    assert HaraldExampleRpi0.hello() == :world
  end
end
