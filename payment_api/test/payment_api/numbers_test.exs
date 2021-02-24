defmodule PaymentApi.NumbersTest do
  use ExUnit.Case

  alias PaymentApi.Numbers

  describe "sum_from_file/1" do
    test "when there is a file, return the sum of numbers" do
      response = Numbers.sum_from_file("numbers")
      expected_response = {:ok, %{sum: 37}}

      assert response == expected_response
    end

    test "when there not file, return an error" do
      response = Numbers.sum_from_file("not_existent_file")
      expected_response = {:error, %{message: "File open failed!"}}

      assert response == expected_response
    end
  end
end
