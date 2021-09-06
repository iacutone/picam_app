# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :picam_ui, PicamUiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fRfl0ZeSorJWFgG+dLqujkeOT4vuMW3Ojv3q1CY7/hCmIKbQ+DRT00C2Mvl1aDk0",
  render_errors: [view: PicamUiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PicamUi.PubSub,
  live_view: [signing_salt: "gbBhojyx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
