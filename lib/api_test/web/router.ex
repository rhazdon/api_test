defmodule ApiTest.Web.Router do
  use ApiTest.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiTest.Web do
    pipe_through :api

    get "/test/:p", TestinatorController, :index
    post "/post", TestinatorController, :post
  end
end
