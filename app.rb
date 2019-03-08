require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ship].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :pirates/show
    end

    get '/new' do

    end

  end
end
