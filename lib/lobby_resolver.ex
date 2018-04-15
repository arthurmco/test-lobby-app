defmodule TestLobbyApp.LobbyResolver do

  # Here you define the methods used in your GraphQL API 
  # For now, we have only all_lobbies
  #
  #
  # It returns something like that
  # Each entry in the map is one field in the Lobby object, defined in schema_types.ex
  # You're only obliged to return something to a field if the field is marked with a non_null
  
  def all_lobbies(_args, _info) do
    {:ok, [
      %{id: 1, name: "Test Lobby", max_players: 32, player_count: 0, is_full: false}
    ]}
  end
  
end
