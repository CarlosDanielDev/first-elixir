# Danielspay

Meu primeiro projeto em Elixir!!

# Conceitos

- Tupla
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