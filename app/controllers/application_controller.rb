require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team])

      params[:team][:superheroes].each do |details|
        SuperHero.new(details)
      end

      @superheroes = SuperHero.all

      erb :team
    end




end
