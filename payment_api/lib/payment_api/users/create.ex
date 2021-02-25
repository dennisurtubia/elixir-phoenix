defmodule PaymentApi.Users.Create do
  alias PaymentApi.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
