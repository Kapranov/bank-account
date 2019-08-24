defmodule Bank.Supervisor do
  @moduledoc false

  use Supervisor

  @name __MODULE__

  def start_link(opts), do: Supervisor.start_link(@name, :ok, opts)

  def init(:ok) do
    children = []

    opts = [strategy: :one_for_one, name: Bank.Supervisor]
    Supervisor.init(children, opts)
  end
end
