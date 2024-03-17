defmodule Api.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :first_name, :string
    field :gender, :string
    field :bio, :string
    field :last_name, :string
    field :other_name, :string
    field :img_url, :string
    field :country, :string
    field :city, :string
    field :address, :string
    field :phone_number, :string
    belongs_to :account, Api.Accounts.Account

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :gender, :bio, :last_name, :other_name, :img_url, :country, :city, :address, :phone_number, :account_id])
    |> validate_required([:account_id])
  end
end
