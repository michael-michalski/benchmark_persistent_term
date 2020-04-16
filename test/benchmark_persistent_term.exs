defmodule BenchmarkPersistentTermTest do
  use ExUnit.Case

  test "test get" do
    :persistent_term.put("LC_NUMERIC", "en_US.UTF-8")
    Benchee.run(
      %{
        "System.get_env" => fn -> System.get_env("LC_NUMERIC") end,
        ":persistent_term.get" => fn -> :persistent_term.get("LC_NUMERIC") end,
        "Application.fetch_env!" => fn -> Application.fetch_env!(:benchmark_persistent_term, :lc_numeric) end
      }
    )
  end
end
