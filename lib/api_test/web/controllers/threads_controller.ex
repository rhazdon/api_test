defmodule ApiTest.Web.ThreadsController do
  use ApiTest.Web, :controller
  use BlueBird.Controller

  require Logger

  api :GET, "/api/threads" do
    group "Blog Threads"
    resource "Threads"
    title "Show all threads"
  end
  def index(conn, params), do: render conn, "index.json"

  api :GET, "/api/threads/:id" do
    group "Blog Threads"
    resource "Threads"
    title "Show single thread"
    note "This is a note"
    warning "This is only for logged in users!"
    parameter :id, :integer
  end
  def show(conn, params), do: render conn, "index.json"

  api :POST, "/api/threads" do
    group "Blog Threads"
    resource "Threads"
    title "Create new thread"
  end
  def create(conn, params), do: render conn, "index.json"

  api :PUT, "/api/threads/:id" do
    group "Blog Threads"
    title "Update Thread"
    parameter :id, :integer
  end
  def update(conn, %{"id" => id}) do
    {status, _} = Integer.parse(id)

    conn
    |> put_status(status)
    |> render("422.json")
  end
end
