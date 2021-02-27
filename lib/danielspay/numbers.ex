defmodule Danielspay.Numbers do
  def sum_from_file(filename) do
    # do lado direito temo uma função que retorna uma tupla com 2 valores
    # e do lado direito criamo uma tupla com 2 valores, se a tuplado do lado
    # direito retornar algo como a tupla do lado esquerdo teremos um "MATCH"
    # e isso será verdadeiro, logo file irá receber o valor de retorno da função da direita
    {:ok, file} = File.read("#{filename}.csv")
    file
  end
end
