defmodule ComplexThrifter.Handler do
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, Keyword.merge(opts, name: __MODULE__))
  end

  def init(:ok) do
    {:ok, :ok}
  end

  def create(real, imag) do
    ComplexThrifter.Models.ComplexNo.new(real: real, imag: imag)
  end

  def add(first, second) do
    real = first.real + second.real
    imag = first.imag + second.imag
    ComplexThrifter.Models.ComplexNo.new(real: real, imag: imag)
  end

  def subtract(first, second) do
    real = first.real - second.real
    imag = first.imag - second.imag
    ComplexThrifter.Models.ComplexNo.new(real: real, imag: imag)
  end

end
