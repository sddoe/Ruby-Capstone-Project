$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'bin/exercise_bot_ruby'
require_relative 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackExercisebot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run SlackExercisebot::Web