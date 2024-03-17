defmodule ApiWeb.DefaultController do
  use ApiWeb, :controller

  def index(conn, _params) do
    text conn, "The API endpoint has been hit - #{Mix.env()}"
  end

  def health_checker(conn, _params) do
    text conn, "Server is running in good health!"
  end
end