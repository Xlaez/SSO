defmodule Api.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string
      add :hashed_password, :string
      add :ip_addresses, {:array, :string}, default: [], null: false
      add :connected_apps, {:array, :string}, default: [], null: false
      add :blocked_apps, {:array, :string}, default: [], null: false
      timestamps(type: :utc_datetime)
    end

    create unique_index(:accounts, [:email])
  end
end