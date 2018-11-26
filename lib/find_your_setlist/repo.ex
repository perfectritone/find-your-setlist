defmodule FindYourSetlist.Repo do
  use Ecto.Repo,
    otp_app: :find_your_setlist,
    adapter: Ecto.Adapters.Postgres
end
