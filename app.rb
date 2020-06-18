require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :"pirates/new"
    end

    get '/new' do
      erb :"pirates/form"
    end

    post '/pirates' do
      # @pirate = Pirate.new(params[:pirate])

      erb :"pirates/show"
    end

  end
end
