defmodule Bank do
  @moduledoc false

  use Application

  def start(_type, _args) do
    Bank.Supervisor.start_link([])
  end
end
