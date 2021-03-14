defmodule DanielspayWeb.UsersController do
  use DanielspayWeb, :controller

  alias Danielspay.User

  action_fallback DanielspayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Danielspay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

end
