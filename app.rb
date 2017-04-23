require 'sinatra'
require 'bundler'
require 'json'

Bundler.require

class App < Sinatra::Base

  before do
    content_type :json
  end

  get '/' do
    {:first_name => 'Bryann', :last_name => 'Barbosa' }.to_json
  end

  post '/user' do
    params = JSON.parse(request.body.read).symbolize_keys
    {:age => params[:age]}.to_json
  end

end
