defmodule PhoenixLiveWeb.PageController do
  use PhoenixLiveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
