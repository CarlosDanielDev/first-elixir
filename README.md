# Danielspay

Meu primeiro projeto em Elixir!!

# Conceitos

- Tuple
```elixir
  {:test, value}
```
- Map
```elixir
  %{key: "value", second_key: "second_value"}
```

- List
```elixir
  [1,2,3,4,5,6]
```

- Pipe Operator `|>`
```elixir
"value"
|> do_something_with_the_value()
|> now_do_other_thing_with_the_returned_value_obove()
```
> Ele passa de forma implicita a expressão `"value"` como primeiro argumento para as funções seguintes

- Pattern Match

```elixir
  def sum_from_file(filename) do
    # Obervando do lado direito temos uma função que retorna uma *tupla* com 2 valores
    # e do lado esquerdo criamos uma *tupla* com 2 valores, se a *tupla* do do lado
    # direito retornar o mesmo padrão da *tupla* do lado esquerdo teremos um "MATCH" (os dois se coincidem)
    # e isso será verdadeiro, logo a variável *file* irá receber o valor de retorno da função do lado direito
    {:ok, file} = File.read("#{filename}.csv")
    file
  end
```

# Modules

- Enum
  > Modulo para fazer operações em `numbers`.
- Stream
  > Irmão preguiçoso do `Enum` (lazy module).
- String
  > Modulo para fazer determinadas operações em `strings`.


### Utils
#### Docker

```bash
docker run --name nlw_4_elixir -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
```