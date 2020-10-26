defmodule RecommendationServiceWeb.UserController do
  use RecommendationServiceWeb, :controller
  alias RecommendationService.User, as: User
  alias RecommendationService.Repo, as: Repo


  def index(conn, _params) do
    users = Repo.all(User)
    json conn, users
  end


  def show(conn, %{"id" => id}) do
    user = User.get_user(id)
    json conn, user
  end

  def destroy(conn, %{"id" => id}) do
    user = User.get_user(id)
    with {:ok, %User{}} <- User.delete_user(user) do
    send_resp(conn, :no_content, "")
    end
  end

  # def update(conn, %{"id" => id, "user" => user_params}) do
  #   user = User.get_user(id)
  #   with {:ok, %User{} = user} <- User.update_user(user, user_params) do
  #     send_resp(conn, :no_content, "")
  #   end
  #  end

  def store(conn, user_params ) do
    with {:ok, %User{} = user} <- User.create_user(user_params) do
      conn
      |> put_status(:created)
      # |> UserView.render("show.json", user: user)
    send_resp(conn, :ok, "")
    end
  end


end
