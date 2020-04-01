require 'sinatra/base'

module SlackExercisebot
  class Web < Sinatra::Base
    get '/' do
      'Exercise is good for you.'
    end
  end
end