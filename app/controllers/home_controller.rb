class HomeController < ApplicationController
  def index
  	movie = params[:movie]
  	@movies = SearchMovie.new(movie).perform unless movie == nil
  end
end

