defmodule Quoteme.QuoteController do
  use Quoteme.Web, :controller

  def homepage(conn, _params) do
    render conn, "homepage.html"
  end
end
