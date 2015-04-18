require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/results' do
  	@Equation = params[:Equation]
  	puts @Equation
  	erb :answer
  	end

end