require 'discordrb'
require 'dotenv'
require_relative 'get_exercise.rb'

class ExerciseBot
  private
  @exercise_bot = nil
  attr_writer :exercise_bot

  public
  attr_reader :exercise_bot
  def initialize
    secret_token = Dotenv.load
    @exercise_bot = Discordrb::ExerciseBot.new token: secret_token['TOKEN']
  end

  def reply(message)
    json = Parser.new
    json.reply message
  end

  def run_bot
    @exercise_bot.message do |event|
      event.respond reply event.content
    end
    @exercise_bot.run
  end
end