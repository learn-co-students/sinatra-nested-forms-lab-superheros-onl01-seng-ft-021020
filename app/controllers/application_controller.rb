require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_hero
    end
    
    post '/teams' do 
      @team = Team.new(params)
      @members = []
      params[:team][:members].each do |args|
        @members << Hero.new(args)
      end
      erb :team
    end


end
