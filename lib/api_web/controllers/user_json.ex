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
      first_name: user.first_name,
      gender: user.gender,
      bio: user.bio,
      last_name: user.last_name,
      other_name: user.other_name,
      img_url: user.img_url,
      country: user.country,
      city: user.city,
      address: user.address,
      phone_number: user.phone_number,
    }
  end

  def data(%User{} = user) do
    %{
      id: user.id,
      first_name: user.first_name,
      gender: user.gender,
      bio: user.bio,
      last_name: user.last_name,
      other_name: user.other_name,
      img_url: user.img_url,
      country: user.country,
      city: user.city,
      address: user.address,
      phone_number: user.phone_number,
    }
  end
end
