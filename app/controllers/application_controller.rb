class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/imagelink' do
    erb :deepfry
  end

  # Add your post route and action be
  post '/imagefinal' do
    print params.to_s
    @link = params[:link]
    @height = params[:height] 
    @width = params[:width] 
    @color = params[:color]
    erb :imagefinal
  end
end
