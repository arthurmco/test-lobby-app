defmodule TestLobbyApp.Router do
  use Plug.Router

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Poison

  plug :match
  plug :dispatch

  # This is how you forward to the API
  forward "/api",
    to: Absinthe.Plug,
    init_opts: [schema: TestLobbyApp.Schema]

  # This is how you forward to the GraphiQL, the tester
  forward "/graphiql",
    to: Absinthe.Plug.GraphiQL,
    init_opts: [schema: TestLobbyApp.Schema]
  
  match _ do
    send_resp(conn, 404, "Not found")
  end
  
end
