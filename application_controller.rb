require 'bundler'
Bundler.require
require_relative "models/math.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/answer' do
  	@Equation = params[:Equation]
  	calc = Mathy.new(params[:Equation])
  	calc.calculate()
  	@visualAnswer = calc.answer
	  erb :answer
  end

  

end