require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        members = params[:team][:heros]
        
        members.each do |member_params|
            SuperHero.new(member_params)
        end
        @super_heros = SuperHero.all
        #binding.pry
        erb :team
    end

end
