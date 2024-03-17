defmodule Api.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :first_name, :string
      add :gender, :string
      add :bio, :text
      add :last_name, :string
      add :other_name, :string
      add :img_url, :string
      add :country, :string
      add :city, :string
      add :address, :string
      add :phone_number, :string
      add :account_id, references(:accounts, on_delete: :delete_all, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:users, [:account_id])
  end
end