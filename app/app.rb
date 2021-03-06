require 'sinatra/base'
require 'sinatra/partial'
require_relative 'controllers/app'

class AppName < Sinatra::Base
  enable :sessions

  get '/' do
    erb :"/../views/index"
  end

  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', '..', 'public') }
  run! if app_file == $PROGRAM_NAME
end
