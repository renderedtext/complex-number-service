defmodule ComplexThrifter.Client do
  use Riffed.Client,
  auto_import_structs: false,
  structs: ComplexThrifter.Models,
  client_opts: [
    host: "localhost",
    port: 2112,
    retries: 3,
    framed: true
  ],
  service: :complex_no_service_thrift,
  import: [:create,
           :add,
           :subtract]
end
