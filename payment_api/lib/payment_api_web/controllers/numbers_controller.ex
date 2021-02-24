defmodule PaymentApiWeb.NumbersController do
  use PaymentApiWeb, :controller

  alias PaymentApi.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{sum: sum}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{sum: sum})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end
