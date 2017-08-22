defmodule Foo do
  defmodule Bar do
    @moduledoc false

    def hello(name, _options) do
      IO.puts "Hello, #{name}"
    end
  end

  @doc """
  Prints a welcoming message
  """
  defdelegate hello(name, options \\ []), to: __MODULE__.Bar

  @doc """
  Prints hi
  """
  def hi(name, options \\ []), do: IO.puts "Hi!"
end
