defmodule ApiTest.Web.TestinatorControllerTest do
  use ApiTest.Web.ConnCase

  test "index get" do
    conn = build_conn()
    |> get("/api/test/3")
    |> BlueBird.ConnLogger.save()

    assert true
  end

  test "index post" do
    conn = build_conn()
    |> put_req_header("content-type", "application/json")
    |> post("/api/post", %{p: 3})
    |> BlueBird.ConnLogger.save()

    assert true
  end
end
