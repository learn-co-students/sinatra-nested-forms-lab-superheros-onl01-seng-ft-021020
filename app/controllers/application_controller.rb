require 'sinatra/base'
require_relative '../models/team'
require_relative '../models/hero'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :team
  end

  post '/team' do
    @team = Team.new(params[:team]) 
    @heroes = params[:team][:heroes].map{ |hero| Hero.new(hero) }
    erb :super_hero 
  end
end
