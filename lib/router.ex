defmodule TestLobbyApp.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Poison

  forward "/api",
    to: Absinthe.Plug,
    init_opts: [schema: TestLobbyApp.Schema]

  match _ do
    send_resp(conn, 404, "Not found")
  end
  
end
