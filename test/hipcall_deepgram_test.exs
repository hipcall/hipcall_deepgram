defmodule HipcallDeepgramTest do
  use ExUnit.Case
  doctest HipcallDeepgram

  test "greets the world" do
    assert HipcallDeepgram.hello() == :world
  end
end
