defmodule TestLobbyAppTest do
  use ExUnit.Case
  doctest TestLobbyApp

  test "greets the world" do
    assert TestLobbyApp.hello() == :world
  end
end
