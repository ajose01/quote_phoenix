defmodule Quoteme.QuoteController do
  use Quoteme.Web, :controller

  def homepage(conn, _params) do
    render conn, "homepage.html"
  end

  def index(conn, _params) do
    conn
    |> assign(:quotes, Repo.all(Quoteme.Quote))
    |> render("index.html")
  end
end
