class Api::GifsController < ApplicationController

  def index
    @gifs = HTTP. headers("Authorization" => "Bearer Fhte1J3ule4kyy3sSybXMJTqvObCvBmc").get("https://api.giphy.com/v1/gifs/search?api_key=Fhte1J3ule4kyy3sSybXMJTqvObCvBmc&q=#{params[:search]}&limit=25&offset=0&rating=G&lang=en").parse["data"]
    render 'index.json.jb'
  end
end
