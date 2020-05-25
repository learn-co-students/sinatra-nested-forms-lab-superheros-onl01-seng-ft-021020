require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
        
    end

    post '/teams' do
        @team_name = params["team"]['name']
        @team_motto = params["team"]['motto']
 
        @heroes = []
        @heroes << {
            name: params[:member1_name],
            power: params[:member1_power],
            bio: params[:member1_bio],
        }
        @heroes <<{
            name: params[:member2_name],
            power: params[:member2_power],
            bio: params[:member2_bio],
        }
        @heroes << {
            name: params[:member3_name],
            power: params[:member3_power],
            bio: params[:member3_bio],
        }

       

        erb :team

    end


end
