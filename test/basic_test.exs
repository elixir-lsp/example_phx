defmodule BasicTest do
  use ExUnit.Case, async: true

  test "the truth" do
    assert 40 + 2 == 42
  end

  test "hmmm" do
    IO.puts("abc")
  end

  describe "abc" do
    test "def" do
      IO.puts("aaa")
    end
  end
end
