defmodule ApiWeb.Router do
  use ApiWeb, :router
  use Plug.ErrorHandler

  defp handle_errors(conn, %{reason: %Phoenix.Router.NoRouteError{message: message}}) do
    conn |> json(%{errors: message}) |> halt()
  end

  defp handle_errors(conn, %{reason: %{message: message}}) do
    conn |> json(%{errors: message}) |> halt()
  end

  defp handle_errors(conn, %{reason: reason}) do
    IO.inspect(reason, label: "Unhandled error reason")
    conn |> json(%{errors: "Internal Server Error"}) |> halt()
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_session
  end

  pipeline :auth do
    plug ApiWeb.Auth.Pipeline
    plug ApiWeb.Auth.SetAccount
  end

  scope "/api", ApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
    post "/accounts/create", AccountController, :create
    post "/accounts/sign_in", AccountController, :sign_in
  end

  scope "/api", ApiWeb do
    pipe_through [:api, :auth]
    get "/accounts/by_id/:id", AccountController, :show
    get "/accounts/current_session", AccountController, :current_session
    get "/accounts/sign_out", AccountController, :sign_out
    get "/accounts/refresh_session", AccountController, :refresh_session
    post "/accounts/update", AccountController, :update
    put "/users/update", UserController, :update
  end

end
