$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'exercise_bot_ruby'

ExerciseBotRuby::Bot.run