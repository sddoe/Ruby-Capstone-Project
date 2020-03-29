module ExerciseBotRuby
  class Bot < SlackRubyBot::Bot
    help do
      title 'Get Exercise Bot'
      desc 'This bot is about getting a random exercise'

      command :get_next_exercise do
        title 'get_next_exercise'
        desc 'Returns the url of the next exercise'
        long_desc 'Returns the url of the next exercise'
      end
    end
  end
end