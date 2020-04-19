use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :community, CommunityWeb.Endpoint,
  secret_key_base: "QRw7s/jiwrtMjJrMLOKfJARhstIxnvvWe6u6zPUcdKNATKuxhCtz51Y/ecHZyfYO"

# Configure your database
config :community, Community.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool_size: 2
