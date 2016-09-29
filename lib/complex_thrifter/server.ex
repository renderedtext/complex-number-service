defmodule ComplexThrifter.Server do
  use Riffed.Server,
  auto_import_structs: false,
  service: :complex_no_service_thrift,
  structs: ComplexThrifter.Models,
  functions: [create: &ComplexThrifter.Handler.create/2,
              add: &ComplexThrifter.Handler.add/2,
              subtract: &ComplexThrifter.Handler.subtract/2,
  ],
  server: {:thrift_socket_server,
           port: 2112,
           framed: true,
           max: 10_000,
           socket_opts: [
             recv_timeout: 3000,
             keepalive: true]
          }
end
