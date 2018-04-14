defmodule TestLobbyApp.LobbyResolver do

  def all_lobbies(_args, _info) do
    {:ok, [
      %{id: 1, name: "Test Lobby", max_players: 32, player_count: 0, is_full: false}
    ]}
  end
  
end
