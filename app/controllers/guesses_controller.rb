class GuessesController < ActionController::Base

def index

  #insert @first, @second, @third into database
  g=Guess.new
  g.first_num = params["first_number"]
  g.second_num = params["second_number"]
  g.third_num = params["third_number"]
  g.save

  @list=Guess.all

  render ("guesses/index.html.erb")
end

def answer
  @ans = params["rule"]
  render("guesses/answer.html.erb")
end

end
