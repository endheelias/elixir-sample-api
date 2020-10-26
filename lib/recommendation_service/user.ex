defmodule RecommendationService.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias RecommendationService.User, as: User
  alias RecommendationService.Repo, as: Repo


  @derive {Jason.Encoder, only: [:email, :favorite_style_song, :hometown, :name]}
  schema "users" do
    field :email, :string
    field :favorite_style_song, :string
    field :hometown, :string
    field :name, :string

    timestamps()
  end


  @doc false
  # @derive {Jason.Encoder, only: [:email, :favorite_style_song, :hometown, :name]}
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :hometown, :favorite_style_song])
    |> validate_required([:name, :email, :hometown, :favorite_style_song])
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
   end

   def delete_user(%User{} = user) do
    Repo.delete(user)
   end

   def get_user(id), do: Repo.get!(User, id)

   def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
   end
end
