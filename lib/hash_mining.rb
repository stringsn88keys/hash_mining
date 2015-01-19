require 'sinatra'

File.write('counter.txt', '0')

class HashMining < Sinatra::Application
  set :bind, '0.0.0.0'
  get '/' do
    counter = File.read('counter.txt').to_i
    File.write('counter.txt', counter + 1000000)
    erb :index, :layout => :default, :locals => { :start => counter }
  end

  get '/slow' do

    erb :slow, :layout => :default
  end

  post '/' do
    p params
  end
end
