defmodule TestLobbyApp.Application do
  use Application
  
  @moduledoc """
  TestLobbyApp entry point
  """

  def end_game do
    val = [
      "I wanna be your end game",
      "I wanna be your first string",
      "I wanna be your A-team"
    ]

    Enum.map(val, &(IO.puts &1))
  end
  
  def start(_type, _args) do
    IO.puts("Hello")
    end_game()
  end

  def hello do
    :world
  end
end
