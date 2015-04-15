class HomeController < ApplicationController
  
  def index
    @jokes = Joke.all
    @quotes = Quote.all
  end
  
  def random_joke
    @joke = Joke.all[rand(Joke.count)]
  end

  def random_quote
    @quote = Quote.all[rand(Quote.count)]
  end
  
end
