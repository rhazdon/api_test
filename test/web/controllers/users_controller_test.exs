defmodule ApiTest.Web.UsersControllerTest do
  use ApiTest.Web.ConnCase

  test "index/2" do
    build_conn()
    |> get("/api/users")
    |> BlueBird.ConnLogger.save()

    assert true
  end

  test "create/2" do
    build_conn()
    |> put_req_header("content-type", "application/json")
    |> post("/api/users", Poison.encode! %{param: 3})
    |> BlueBird.ConnLogger.save()

    assert true
  end
end
