defmodule Quoteme.PageController do
  use Quoteme.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
