defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"messenger" => messenger}) do
    # To pass multiple values to the template, we chain multiple
    # assign calls:
    conn
    |> assign(:messenger, messenger)
    |> assign(:receiver, "Carlos")
    |> render("show.html")
  end
end
