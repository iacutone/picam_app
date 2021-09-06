defmodule PicamUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      PicamUiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PicamUi.PubSub},
      # Start the Endpoint (http/https)
      PicamUiWeb.Endpoint
      # Start a worker by calling: PicamUi.Worker.start_link(arg)
      # {PicamUi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PicamUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PicamUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
