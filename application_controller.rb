require 'bundler'
Bundler.require
require_relative "models/math.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/results' do
  	@Equation = params[:Equation]
  	calc = Mathy.new(params[:Equation])
  	calc.calculate()
	erb :answer
	puts params[:Equation]
  end
end