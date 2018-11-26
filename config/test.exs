use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :find_your_setlist, FindYourSetlistWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :find_your_setlist, FindYourSetlist.Repo,
  username: "postgres",
  password: "postgres",
  database: "find_your_setlist_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
