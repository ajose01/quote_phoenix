defmodule Quoteme.Quote do
  use Ecto.Model

  schema "quotes" do
    field :saying, :string
    field :author, :string

    timestamps
  end

  # def changeset(quote, params \\ %{}) do
  #   #figure out how to implement
  # end
end
