defmodule Bank.AccountTest do
  use ExUnit.Case, async: true

  test "we should be able to use different naming strategy" do
    {:ok, pid} = Bank.Account.start_link("a name", NamingStrategy.Null)
    assert true == is_pid(pid)
  end
end
