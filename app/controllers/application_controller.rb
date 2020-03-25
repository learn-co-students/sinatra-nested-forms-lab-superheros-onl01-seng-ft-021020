require 'sinatra/base'
require_relative '../models/team'
require_relative '../models/hero'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end 

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |heroes|
            Hero.new(heroes)
        end 

        @super_heroes = Hero.all 
        
        erb :team 

    end
end
