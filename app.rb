require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.create(params[:pirate])
      params[:pirate][:ships].each do |specs|
        Ship.create(specs)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
