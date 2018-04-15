defmodule TestLobbyApp.Schema.Types do
  use Absinthe.Schema.Notation

  # The types used in the GraphQL API goes here
  #  The base types are :id (for IDs), :string, :integer and :boolean
  #  You can use defined types too (like :lobby)
  #  You can define lists with list_of(), or not-null fields with non_null()

  @desc "Lobby information"
  object :lobby do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :max_players, non_null(:integer)
    field :player_count, non_null(:integer)
    field :is_full, non_null(:boolean)
  end

  
end
