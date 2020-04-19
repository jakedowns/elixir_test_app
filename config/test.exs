use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :community, CommunityWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :community, Community.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("PGUSER"),
  password: System.get_env("PGPASSWORD"),
  database: System.get_env("PGDATABASE"),
  hostname: System.get_env("PGHOST"),
  port: System.get_env("PGPORT") |> String.to_integer,
  pool: Ecto.Adapters.SQL.Sandbox
