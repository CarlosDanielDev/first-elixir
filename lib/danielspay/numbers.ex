defmodule Danielspay.Numbers do
  def sum_from_file(filename) do
    {:ok, file} = File.read("#{filename}.csv")
    file
  end
end
