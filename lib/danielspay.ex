defmodule Danielspay do
  alias Danielspay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
