require 'json'

class Parser
  attr_reader :data
  
  def initialize
    @data = File.read('story.json')
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
  end
end