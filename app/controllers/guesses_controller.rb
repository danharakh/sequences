class GuessesController < ActionController::Base

def index

  g=Guess.new
  
  @list=Guess.all
  @first=params["first_number"]
  @second = params["second_number"]
  @third = params["third_number"]

  render ("guesses/index.html.erb")
end

def answer
  render("guesses/answer.html.erb")
end

end
