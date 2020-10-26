defmodule RecommendationService.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :hometown, :string
      add :favorite_style_song, :string

      timestamps()
    end

  end
end
