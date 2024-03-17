defmodule ApiWeb.UserJSON do
  alias Api.Users.User

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  def show_user(user) do
    %{
      id: user.id,
      full_name: user.full_name,
      gender: user.gender,
      biography: user.biography,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at,
    }
  end

  def data(%User{} = user) do
    %{
      id: user.id,
      full_name: user.full_name,
      gender: user.gender,
      biography: user.biography
    }
  end
end
