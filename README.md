# Danielspay - First Elixir Project

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
- Struct
> `Map` com um nome

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
      # e do lado esquerdo criamos uma *tupla* com 2 valores, se a *tupla* do lado
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


### Controllers de Fallback
Um controller genérico

### Utils


#### Downlaod elixir on mac

```bash
brew install elixir
```

#### Download Phoenix

```bash
mix archive.install hex phx_new 1.5.7
```

#### Run tests on project dir
```bash
mix test
```

#### Download deps

```bash
mix deps.get 
```

#### Start a new  `Elixir` project with `Phoenix`

```bash
mix phx.new project_name --no-webpack --no-html
```

### Create database with `Ecto`

```bash
mix ecto.create
```

### Create migration with `Ecto`
```bash
mix ecto.gen.migration table_name
```

### Run migrations
```bash
mix ecto.migrate 
```

### Drop a database
```bash
mix ecto.drop
```

#### Run Server

```elixir
mix phx.server
```
#### Docker

```bash
docker run --name nlw_4_elixir -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
```