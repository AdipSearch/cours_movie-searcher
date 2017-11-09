class HomeController < ApplicationController
  def index
  	SearchMovie.new(movie).perform
  end
end
