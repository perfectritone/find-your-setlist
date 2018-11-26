defmodule FindYourSetlistWeb.PageController do
  use FindYourSetlistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
