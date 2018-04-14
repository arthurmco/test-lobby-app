defmodule TestLobbyApp.Router do
  use Plug.Router

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Poison

  plug :match
  plug :dispatch

  forward "/api",
    to: Absinthe.Plug,
    init_opts: [schema: TestLobbyApp.Schema]

  forward "/graphiql",
    to: Absinthe.Plug.GraphiQL,
    init_opts: [schema: TestLobbyApp.Schema]
  
  match _ do
    send_resp(conn, 404, "Not found")
  end
  
end
