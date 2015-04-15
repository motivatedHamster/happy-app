class QuotesController < ApplicationController
  def create
    Quote.create(quote_params)
    redirect_to quotes_path
  end
  
  def index
    @quotes = Quote.all
  end
  
  def new
    @quote = Quote.new
  end
  
  private
  
  def quote_params
    params.require(:quote).permit(:body)
  end
end  # class QuotesController < ApplicationController
