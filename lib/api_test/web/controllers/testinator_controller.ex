defmodule ApiTest.Web.TestinatorController do
  use ApiTest.Web, :controller
  use BlueBird.Controller

  require Logger

  api :GET, "/api/test/:p" do
    group "testttasd"
    title "Testiiii"
  end
  def index(conn, params) do
    render conn, "index.json"
  end

  api :POST, "/api/post" do
    group "asd123"
    title "123asd"
  end
  def post(conn, params) do
    IO.inspect conn
    render conn, "index.json"
  end
end
