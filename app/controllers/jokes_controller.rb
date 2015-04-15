class JokesController < ApplicationController
  def create
    Joke.create(joke_params)
    redirect_to jokes_path
  end
  
  def index
    @jokes = Joke.all
  end
  
  def new
    @joke = Joke.new
  end
  
  private
  
  def joke_params
    params.require(:joke).permit(:body)
  end
end  # class JokesController < ApplicationController
