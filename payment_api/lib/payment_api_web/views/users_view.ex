defmodule PaymentApiWeb.UsersView do
  alias PaymentApi.User

  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname, age: age}}) do
    %{
      message: "User created!",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        age: age
      }
    }
  end
end
