defmodule PaymentApi.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, data}) do
    sum =
      data
      |> String.split(",")
      |> Stream.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()

    {:ok, %{sum: sum}}
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "File open failed!"}}
end
