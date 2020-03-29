require 'rss'
require 'open-uri'

module ExerciseBotRuby
  module Commands
    class GetExercise < SlackRubyBot::Commands::Base
      command 'get_next_exercise' do |client, data, _match|
        url = 'https://www.overstellar.se/random-exercise/'
        rss = RSS:Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: rss.link)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end
end

class HelloText
  def self.say_hello
    'Hello! This is a Bot!'
  end
end