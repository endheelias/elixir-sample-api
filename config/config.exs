# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :recommendation_service,
  ecto_repos: [RecommendationService.Repo]

# Configures the endpoint
config :recommendation_service, RecommendationServiceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zoP1qfA2qBtsTUYCE3MefuF2zHm4RSFd6aDYEA2gGa6os0j/qq5i3WQ0Hm6vON4X",
  render_errors: [view: RecommendationServiceWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: RecommendationService.PubSub,
  live_view: [signing_salt: "R51ouo8Y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
