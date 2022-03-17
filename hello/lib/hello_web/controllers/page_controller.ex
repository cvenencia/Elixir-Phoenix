defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # render(conn, :index)

    # conn
    # |> send_resp(201, "")

    # redirect(conn, to: Routes.page_path(conn, :redirect_test))

    # conn
    # |> put_flash(:info, "You have been redirected!")
    # |> put_flash(:error, "Fake error, don't worry.")
    # |> redirect(to: Routes.page_path(conn, :redirect_test))

    pages = [%{title: "foo"}, %{title: "bar"}]
    render(conn, "index.json", pages: pages)
  end

  def show(conn, _params) do
    page = %{title: "foo"}
    render(conn, "show.json", page: page)
  end

  def redirect_test(conn, _params) do
    render(conn, :index)
  end

  def test(conn, _params) do
    render(conn, "test2.html")
  end
end
