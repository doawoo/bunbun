defmodule BunBunTest do
  use ExUnit.Case
  doctest BunBun

  test "greets the world" do
    assert BunBun.hello() == :world
  end
end
