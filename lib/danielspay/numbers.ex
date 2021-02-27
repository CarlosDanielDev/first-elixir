defmodule Danielspay.Numbers do
  def sum_from_file(filename) do
    # Obervando do lado direito temos uma função que retorna uma *tupla* com 2 valores
    # e do lado esquerdo criamos uma *tupla* com 2 valores, se a *tupla* do do lado
    # direito retornar o mesmo padrão da *tupla* do lado esquerdo teremos um "MATCH" (os dois se coincidem)
    # e isso será verdadeiro, logo a variável *file* irá receber o valor de retorno da função do lado direito

    # Tupla = Coleção de Dados
    # File = variavél
    # LADO ESQUERO = LADO DIREITO
    {:ok, file} = File.read("#{filename}.csv")
    file
  end
end
