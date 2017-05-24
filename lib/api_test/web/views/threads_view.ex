defmodule ApiTest.Web.ThreadsView do
  use ApiTest.Web, :view

  def render("index.json", _) do
    %{status: "ok"}
  end

  def render("422.json", _) do
    %{status: "unprocessable entity"}
  end
end
