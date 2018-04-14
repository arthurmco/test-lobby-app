defmodule TestLobbyApp.Schema.Types do
  use Absinthe.Schema.Notation


  @desc "Lobby information"
  object :lobby do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :max_players, non_null(:integer)
    field :player_count, non_null(:integer)
    field :is_full, non_null(:boolean)
  end

  
end
