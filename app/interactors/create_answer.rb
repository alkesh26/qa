# frozen_string_literal: true

require "active_interaction"

class CreateAnswer < ActiveInteraction::Base
  object :answer,
    desc: "The unsaved answer to create"
  object :creator,
    class: User,
    desc: "The creator of the answer"

  def execute
    answer.transaction do
      add_user
      save_answer
    end

    answer
  end

  private

    def add_user
      answer.user = creator
    end

    def save_answer
      answer.save!
    end
end
