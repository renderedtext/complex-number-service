defmodule ComplexThrifter do
use Application

  def start(_start_type, _start_args) do

    import Supervisor.Spec

    children = [
      worker(ComplexThrifter.Server, []),
      worker(ComplexThrifter.Client, []),
      worker(ComplexThrifter.Handler, [])
    ]

    opts = [strategy: :one_for_one, name: ComplexThrifter.Supervisor]
    start_link_res = Supervisor.start_link(children, opts)

    a = ComplexThrifter.Client.create(1, 2)
    b = ComplexThrifter.Client.create(3, 3)
    c = ComplexThrifter.Client.create(2, 2)
    d = ComplexThrifter.Client.add(a, b)
    e = ComplexThrifter.Client.subtract(d, c)
    IO.inspect a
    IO.inspect b
    IO.inspect c
    IO.inspect d
    IO.inspect e

    start_link_res

  end

end
