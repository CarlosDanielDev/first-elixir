defmodule Danielspay.Numbers do
  def sum_from_file(filename) do
    # Pipe Operator, composto por um Pipe | e um sinal de maior que >
    # Ele pega a primeira expressão antes dele, nesse caso o "#{filename}.csv"
    # e passa de forma impicita como primeiro argumento para as funções seguintes
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    result =
      result
    |> String.split(",")
    # |> Enum.map(fn number -> String.to_integer(number) end)
    #  Stream, Lazy Operator.
    #  Se nossa Lista tivesse 100 valores, o Enum, passaria por cada uma convertendo em Inteiro
    #  já o Stream, faz isso tudo de uma vez, de uma forma mais performática e inteligente, poupando processos.
    |> Stream.map(fn number -> String.to_integer(number) end)
    |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid File"}}
end
