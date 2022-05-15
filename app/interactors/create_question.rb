# frozen_string_literal: true

require "active_interaction"

class CreateQuestion < ActiveInteraction::Base
  object :question,
    desc: "The unsaved question to create"
  object :creator,
    class: User,
    desc: "The creator of the question"

  def execute
    question.transaction do
      add_user
      save_question
    end

    question
  end

  private

    def add_user
      question.user = creator
    end

    def save_question
      question.save!
    end
end
