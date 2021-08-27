defmodule KtSq1Backend.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      KtSq1Backend.Repo,
      # Start the Telemetry supervisor
      KtSq1BackendWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: KtSq1Backend.PubSub},
      # Start the Endpoint (http/https)
      KtSq1BackendWeb.Endpoint
      # Start a worker by calling: KtSq1Backend.Worker.start_link(arg)
      # {KtSq1Backend.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: KtSq1Backend.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    KtSq1BackendWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
