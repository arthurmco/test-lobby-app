defmodule TestLobbyApp.Application do
  use Application
  require Logger
  
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

    Logger.info "App starting"
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, TestLobbyApp.Router, [], port: 8080)
    ]

    Logger.info "App started"
    Supervisor.start_link(children, strategy: :one_for_one)
  end

  def hello do
    :world
  end
end
