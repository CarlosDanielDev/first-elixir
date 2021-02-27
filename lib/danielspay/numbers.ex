defmodule Danielspay.Numbers do
  def sum_from_file(filename) do
    # Pipe Operator, composto por um Pipe | e um sinal de maior que >
    # Ele pega a primeira expressão antes dele, nesse caso o "#{filename}.csv"
    # e passa de forma impicita como primeiro argumento para as funções seguintes
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file}), do: file
  defp handle_file({:error, _reason}), do: {:error, "Invalid File"}
end
