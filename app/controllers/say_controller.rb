class SayController < ApplicationController
  def index
    render text: "What do you want me to say???"
  end

  def hello
    render text: "Saying Hello!"
  end
  def hellojoe
    render text: "Saying Hello Joe!"
  end 
  def hellomichael 
    redirect_to '/say/hello/joe'
  end 

end
