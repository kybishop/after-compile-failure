defmodule AfterCompileReproTest do
  use ExUnit.Case
  doctest AfterCompileRepro

  test "greets the world" do
    assert AfterCompileRepro.hello() == :world
  end
end
