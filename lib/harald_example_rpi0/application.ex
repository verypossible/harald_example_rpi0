defmodule HaraldExampleRpi0.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  @target Mix.target()

  use Application

  def start(_type, _args) do
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HaraldExampleRpi0.Supervisor]
    Supervisor.start_link(children(@target), opts)
  end

  # List all child processes to be supervised
  def children(:host) do
    [
      # Starts a worker by calling: HaraldExampleRpi0.Worker.start_link(arg)
      # {HaraldExampleRpi0.Worker, arg},
    ]
  end

  def children(_target) do
    [
      {Harald.Transport,
       namespace: :bt,
       adapter: {Harald.Transport.UART, device: "/dev/ttyAMA0", uart_opts: [speed: 115_200]}}
      # Starts a worker by calling: HaraldExampleRpi0.Worker.start_link(arg)
      # {HaraldExampleRpi0.Worker, arg},
    ]
  end
end
