defmodule Danielspay.Numbers do
  def sum_from_file(filename) do
    file = File.read("#{filename}.csv")
  end
end
