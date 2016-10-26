class GuessesController < ActionController::Base

def index
  @first=params["first_number"]
  @second = params["second_number"]
  @third = params["third_number"]
  
  render ("guesses/index.html.erb")
end

def answer
  render("guesses/answer.html.erb")
end

end
