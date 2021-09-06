defmodule PicamUiWeb.PageController do
  use PicamUiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
