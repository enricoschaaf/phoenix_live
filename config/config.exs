# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_live,
  ecto_repos: [PhoenixLive.Repo]

# Configures the endpoint
config :phoenix_live, PhoenixLiveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NuurHeDeppk6Ky7CWfIQOZ5MDwxVbvdhZa/emkIyk/6KV4pwhAzCliQZQdOmFMFn",
  render_errors: [view: PhoenixLiveWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixLive.PubSub,
  live_view: [signing_salt: "N15Xh4PO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
