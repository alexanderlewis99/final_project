require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/results' do
  	@Equation = params[:Equation]
  	@answer = eval(@Equation)
  	erb :answer
  	end



  # @Equation.count('*')
  # @Equation.count('+')
  # @Equation.count('/')
  # @Equation.count('-')

end