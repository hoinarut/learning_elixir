defmodule TodoApi.Todo do
  use TodoApi.Web, :model

  @required_fields ~w(description complete owner_id)

  schema "todos" do
    field :description, :string
    field :complete, :boolean
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_fields)
    |> validate_required(@required_fields)
  end
end
