defmodule ApiWeb.Auth.ErrorResponse.Unauthorized do
  defexception [message: "Unauthorized", plug_status: 401]
end

defmodule ApiWeb.Auth.ErrorResponse.Forbidden do
  defexception [message: "Access To Resource Restricted", plug_status: 403]
end

defmodule ApiWeb.Auth.ErrorResponse.NotFound do
  defexception [message: "Not Found", plug_status: 404]
end