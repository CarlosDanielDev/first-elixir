defmodule DanielspayWeb.WelcomeController do
  use DanielspayWeb, :controller

  def index(conn, _params) do
    text(conn, "Olá mundo!")
  end

end
