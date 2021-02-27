defmodule Danielspay.Repo do
  use Ecto.Repo,
    otp_app: :danielspay,
    adapter: Ecto.Adapters.Postgres
end
