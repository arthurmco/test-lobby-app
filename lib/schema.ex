defmodule TestLobbyApp.Schema do
  use Absinthe.Schema

  @moduledoc """
  GraphQL schema for our app
  """
  import_types TestLobbyApp.Schema.Types

  #
  # Here, you declare the methods used, first the field and then what they`ll return
  #
  
  query do
    @desc "Get a list of all lobbies"
    field :all_lobbies, non_null(list_of(non_null(:lobby))) do
      resolve &TestLobbyApp.LobbyResolver.all_lobbies/2
    end
  end
  
end
