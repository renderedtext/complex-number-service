# ComplexThrifter

A demo that shows how to use Thrift with a client-server app.
Run with:
`mix run`
## Demo
```elixir
a = ComplexThrifter.Client.create(1, 2)
b = ComplexThrifter.Client.create(3, 3)
c = ComplexThrifter.Client.create(2, 2)
d = ComplexThrifter.Client.add(a, b)
e = ComplexThrifter.Client.subtract(d, c)
```
