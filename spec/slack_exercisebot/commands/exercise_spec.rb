require 'spec_helper'

describe SlackExercisebot::Commands::GetExercise do
  def app
    SlackExercisebot::Bot.instance
  end

  subject { app }

  it 'returns exercise #1' do
    expect(
      message: "#{SlackRubyBot.config.user} Exercise1", channel: 'channel'
    ).to respond_with_slack_message(
      'Lets start with High Knees. Do it for 20 seconds!!'
      )
  end
end
