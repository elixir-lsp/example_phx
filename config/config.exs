# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :example_phx, ExamplePhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3F18dA18CmRiEDTfnNN2N3S9d9504Q7cMgup0VDRQ4zApzBLrXmjfXP+Hsh2KlEI",
  render_errors: [view: ExamplePhxWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ExamplePhx.PubSub,
  live_view: [signing_salt: "AdyDbZm+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
