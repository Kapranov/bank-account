defmodule Bank.Account do
  @moduledoc false

  use GenServer

  @name __MODULE__

  def start_link(name, naming_strategy \\ NamingStrategy.Tuple) do
    GenServer.start_link(@name, 1000, name: naming_strategy.create(name))
  end

  def init(opts), do: {:ok, opts}
end
