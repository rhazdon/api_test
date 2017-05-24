defmodule ApiTest.Web.Router do
  use ApiTest.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiTest.Web do
    pipe_through :api

    get "/threads",     ThreadsController, :index
    get "/threads/:id", ThreadsController, :show

    post "/threads",     ThreadsController, :create
    put  "/threads/:id", ThreadsController, :update

    get  "/users", UsersController, :index
    post "/users", UsersController, :create
  end
end
