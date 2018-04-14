defmodule TestLobbyApp.Schema do
  use Absinthe.Schema

  @moduledoc """
  GraphQL schema for our app
  """

  alias TestLobbyApp.LobbyResolver

  object :lobby do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :max_players, non_null(:integer)
    field :player_count, non_null(:integer)
    field :is_full, non_null(:boolean)
  end

  query do
    field :all_lobbies, non_null(list_of(non_null(:lobby)))
  end
  
end
