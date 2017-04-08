defmodule PongTest do
  use ExUnit.Case

  test "it responds to a pong with a ping" do
    pong = spawn_link(Pong, :start, [])
    send pong, {:ping, self()}
    assert_receive {:pong, ping}
  end

  test "it responds to two pings with two pongs" do
    pong = spawn_link(Pong, :start, [])
    send pong, {:ping, self()}
    assert_receive {:pong, ping}
    send ping, {:ping, self()}
    assert_receive {:pong, ping}
  end
end
