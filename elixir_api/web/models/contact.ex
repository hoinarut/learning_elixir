defmodule ElixirApi.Contact do
  use Ecto.Schema

  schema "contacts" do
    field :name
    field :phone

    timestamps()
  end
end
