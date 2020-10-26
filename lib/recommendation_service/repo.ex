defmodule RecommendationService.Repo do
  use Ecto.Repo, otp_app: :recommendation_service,
  adapter: Ecto.Adapters.Postgres

  #   def all(RecommendationServiceWeb.User) do
  #     [
        # %RecommendationServiceWeb.User{
        #   id: 1,
        #   name: "Endhe",
        #   email: "endhe.elias@gmail.com",
        #   hometown: "Maceió",
        #   favorite_style_song: "Dance"
        # }, %RecommendationServiceWeb.User{
  #         id: 2,
  #         name: "Juliana",
  #         email: "juliana.pereira.firmiano@gmail.com",
  #         hometown: "Carneiros",
  #         favorite_style_song: "Pop"
  #       }
  #     ]
  #   end

  #  def get(module, id) do
  #     Enum.find all(module), fn elem -> elem.id == id end
  #  end

end
