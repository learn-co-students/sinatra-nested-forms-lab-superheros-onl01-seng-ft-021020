require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
redirect to '/super_hero'
  end
  
  get '/super_hero' do
    erb :super_hero
  end
  
  
  
  
get '/team' do
 binding.pry
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]

      members.each do |member_params|
        SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
      @super_heroes = SuperHero.all

      erb :team
    end

  
end
