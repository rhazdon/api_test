defmodule ApiTest.Web.ThreadsControllerTest do
  use ApiTest.Web.ConnCase

  test "index/2" do
    build_conn()
    |> get("/api/threads")
    |> BlueBird.ConnLogger.save()

    assert true
  end

  test "show/2" do
    build_conn()
    |> get("/api/threads/3")
    |> BlueBird.ConnLogger.save()

    assert true
  end

  test "create/2" do
    build_conn()
    |> put_req_header("content-type", "application/json")
    |> post("/api/threads", Poison.encode! %{param: 3})
    |> BlueBird.ConnLogger.save()

    assert true
  end

  test "update/2" do
    build_conn()
    |> put_req_header("content-type", "application/json")
    |> put("/api/threads/200", Poison.encode! %{param: 3})
    |> BlueBird.ConnLogger.save()

    assert true
  end

  test "update/2 with error 422" do
    build_conn()
    |> put_req_header("content-type", "application/json")
    |> put("/api/threads/422", Poison.encode! %{param: 3})
    |> BlueBird.ConnLogger.save()

    assert true
  end
end
