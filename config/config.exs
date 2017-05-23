# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :api_test, ApiTest.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zpZRkZ2bD9YIqPcUV34nFksSepe8uVTc9Y17k1TgHOnsgVbowJSWGxz2oiFCwYbF",
  render_errors: [view: ApiTest.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :blue_bird,
  docs_path: "priv/static/docs",
  theme: "triple",
  router: ApiTest.Web.Router

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
