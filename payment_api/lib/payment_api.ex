defmodule PaymentApi do
  alias PaymentApi.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
