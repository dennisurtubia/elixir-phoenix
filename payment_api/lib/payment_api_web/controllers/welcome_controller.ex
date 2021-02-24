defmodule PaymentApiWeb.WelcomeController do
  use PaymentApiWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to Payment API")
  end
end
