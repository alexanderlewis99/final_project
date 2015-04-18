require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/results' do
  	@Equation = params[:Equation]
  	calc = Math.new(params[:Equation])
  	calc.calculate()
	erb :answer
  end
end