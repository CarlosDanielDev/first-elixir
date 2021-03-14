defmodule DanielspayWeb.UsersController do
  use DanielspayWeb, :controller

  alias Danielspay.User

  action_fallback(DanielspayWeb.FallbackController)

  def create(conn, params) do
    params
    |> Danielspay.create_user()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %User{} = user}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", user: user)
  end

  defp handle_response({:error, _result} = error, _conn), do: error
end
