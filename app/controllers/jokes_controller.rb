class JokesController < ApplicationController
  def create
    Joke.create(joke_params)
    redirect_to jokes_path
  end
  
  def destroy
    @joke = Joke.find(params[:id])
    @joke.destroy
    redirect_to jokes_path
  end
  
  def edit
    @joke = Joke.find(params[:id])
  end
  
  def index
    @jokes = Joke.all
  end
  
  def new
    @joke = Joke.new
  end
  
  def update
    @joke = Joke.find(params[id])
    @joke.update_attributes(joke_params)
    redirect_to jokes_path
  end
  
  private
  
  def joke_params
    params.require(:joke).permit(:body)
  end
end  # class JokesController < ApplicationController
