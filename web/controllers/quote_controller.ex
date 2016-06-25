defmodule Quoteme.QuoteController do
  use Quoteme.Web, :controller

  alias Quoteme.Router
  import Quoteme.Router.Helpers

  def homepage(conn, _params) do
    render conn, "homepage.html"
  end

  def index(conn, _params) do
    conn
    |> assign(:quotes, Repo.all(Quoteme.Quote))
    |> render("index.html")
  end

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"quote" => %{"saying" => saying, "author" => author}}) do
    q = %Quoteme.Quote{saying: saying, author: author}
    Repo.insert(q)

    redirect conn, to: quote_path(conn, :index)
  end

end
