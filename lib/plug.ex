defmodule TestLobbyApp.Plug  do
  @moduledoc "Our Plug interface"
  import Plug.Conn
  require Logger
  
  def init(options), do: options

  def stringify_ip({oc1, oc2, oc3, oc4}) do
    "#{oc1}.#{oc2}.#{oc3}.#{oc4}"
  end
  
  def call(conn, _opts) do

    ip = stringify_ip(conn.remote_ip)
    Logger.info "Page serviced (#{conn.host} #{conn.method} #{ip} #{conn.request_path})"
    
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello World!\n")
  end
  
end
