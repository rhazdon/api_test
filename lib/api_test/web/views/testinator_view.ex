defmodule ApiTest.Web.TestinatorView do
  use ApiTest.Web, :view

  def render("index.json", _) do
    %{status: "ok"}
  end
end
