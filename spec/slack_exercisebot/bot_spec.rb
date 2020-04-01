require 'spec_helper'

describe SlackExercisebot::Bot do
  def app
    SlackExercisebot::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end