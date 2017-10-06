class TimesController < ApplicationController
  def index
    if session[:times] 
      session[:times] += 1
    else 
      session[:times] = 1
    end 
    @times = session[:times]
    render text: "You have visited #{session[:times]} times!"
  end
  def restart
    session.clear
    render text: "Destroyed the session!"
  end 
end
