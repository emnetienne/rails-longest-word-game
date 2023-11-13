require "json"
require "open-uri"

class GamesController < ApplicationController

def new
    @newgame = ('A'..'Z').to_a.sample(10)
end

def score
  @answer = params[:answer]
  response = URI.parse("https://wagon-dictionary.herokuapp.com/#{@answer}")
  json = JSON.parse(response.read)
  @score = json['found']


end

end
