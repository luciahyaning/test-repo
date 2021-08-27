defmodule KtSq1Backend.Repo do
  use Ecto.Repo,
    otp_app: :kt_sq1_backend,
    adapter: Ecto.Adapters.Postgres
end
