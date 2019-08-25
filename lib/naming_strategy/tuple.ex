defmodule NamingStrategy.Tuple do
  @moduledoc false

  def create(name), do: {:via, nil, name}
end
