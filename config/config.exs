# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kt_sq1_backend,
  ecto_repos: [KtSq1Backend.Repo]

# Configures the endpoint
config :kt_sq1_backend, KtSq1BackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z4NM/rLVe493TDBEajT0V9XCDZDGNbp42g1W5mg2GU3LsYE5ezz70C21F869wMGh",
  render_errors: [view: KtSq1BackendWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: KtSq1Backend.PubSub,
  live_view: [signing_salt: "SD0qycQW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
