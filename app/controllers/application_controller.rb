require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    get '/team' do
        erb :team
    end

    post '/team' do
        @team = params
        erb :team
    end

    


end
