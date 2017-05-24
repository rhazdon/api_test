defmodule ApiTest.Web.UsersController do
  use ApiTest.Web, :controller
  use BlueBird.Controller

  require Logger

  api :GET, "/api/users" do
    title "Get all users"
    warning "Admin only!"
  end
  def index(conn, params), do: render conn, "index.json"

  api :POST, "/api/users" do
    title "Create new user"
    warning  "Admin only!"
  end
  def create(conn, params), do: render conn, "index.json"
end
