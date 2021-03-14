defmodule DanielspayWeb.FallbackController do
  use DanielspayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(DanielspayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
