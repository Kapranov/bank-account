defmodule NamingStrategy.Tuple do
  @moduledoc false

  def create(name) do
    {:via, Bank.AccountRegistry, name}
  end
end
