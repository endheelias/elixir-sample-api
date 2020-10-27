defmodule RecommendationServiceWeb.SpotifyService do
  alias HTTPoison, as: HTTPoison
  def auth() do
    client_id = "d9ea8fc3dccf4cd38d6e0d3526ae4202"
    client_secret = "40a06fd643f4469cb195305624d24495"
    spotify_accounts_url = "https://accounts.spotify.com/api/token"
  end


# const getToken = async () => {
#   const resultAuth = await axios({
#     url: 'https://accounts.spotify.com/api/token',
#     method: 'post',
#     params: {
#       grant_type: 'client_credentials',
#     },
#     headers: {
#       Accept: 'application/json',
#       'Content-Type': 'application/x-www-form-urlencoded',
#     },
#     auth: {
#       username: process.env.USER_ID,
#       password: process.env.USER_SECRET,
#     },
#   });
#   return resultAuth;
# };

end
