defmodule Danielspay.NumbersTest do
  use ExUnit.Case

  alias Danielspay.Numbers

  describe "sum_from_file/1" do
    test "When there is a file with the given name, returns sum of numbers" do
      response = Numbers.sum_from_file("numbers")
      expected_response = {:ok, %{result: 1312}}

      assert response == expected_response
    end
      test "When there isnt a file with the given name, returns an error" do
        response = Numbers.sum_from_file("teste")
        expected_response = {:error, %{message: "Invalid File"}}

        assert response == expected_response
      end
    end

  end
