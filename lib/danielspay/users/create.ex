defmodule Danielspay.Users.Create do
  alias Danielspay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
