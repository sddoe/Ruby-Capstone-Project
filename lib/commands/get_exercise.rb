<<<<<<< HEAD
require 'json'

class Parser
  attr_reader :data
  
  def initialize
    @data = File.read('exercises.json')
  end

  def reply(message)
    json = JSON.parse(@data)
    json['data'].each do |i|
      i['turns'].each do |j|
        next if j['user'] != message
        
        j['operations'].each do |k|
          return k['action']
        end
      end
    end
    'Sorry, I cant understand that command, for support please administrator'
=======
module SlackExercisebot
  module Commands
    class GetExercise < SlackRubyBot::Commands::Base
      command 'Hello' do |client, data, _match|
        client.say(channel: data.channel, text: 'Hello! Get ready to exercise!!')
      end
      command 'Exercise1' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets start with High Knees. Do it for 20 seconds!!')
      end
      command 'Exercise2' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets start with Lunges. Repeat 20 times!!')
      end
      command 'Exercise3' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets start with Squats. Repeat 20 times!!')
      end
      command 'Exercise4' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets start with Crab Walk. Do it for 20 seconds!!')
      end
      command 'Exercise5' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets continue! Calf Raise. Repeat 20 times')
      end
      command 'Exercise6' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets continue! Side Leg Raises. Repeat 20 times')
      end
      command 'Exercise7' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets burn some fat! Wall Pushups. Repeat 20 times')
      end
      command 'Exercise8' do |client, data, _match|
        client.say(channel: data.channel, text: 'Are you ready for this?! Jump squats. Repeat 20 times')
      end
      command 'Exercise9' do |client, data, _match|
        client.say(channel: data.channel, text: 'Lets keep it moving! Knee to Elbow. Repeat 20 times')
      end
      command 'Exercise10' do |client, data, _match|
        client.say(channel: data.channel, text: 'Almost there! Squats. Repeat 20 times')
      end
    end
>>>>>>> 31e92a8da951cca660d4a76e68fe6200a3015c9d
  end
end