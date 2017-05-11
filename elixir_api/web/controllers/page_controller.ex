defmodule ElixirApi.PageController do
  use ElixirApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
