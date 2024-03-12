defmodule ApiWeb.DefaultController do
  use ApiWeb, :controller

  def index(conn, _params) do
    text conn, "The API endpoint has been hit - #{Mix.env()}"
  end
end