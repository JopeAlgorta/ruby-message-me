# frozen_string_literal: true

# User model
class Message < ApplicationRecord
  belongs_to :user
  scope :latest_messages, -> { order(:created_at).last(40) }

  validates :body, presence: true
end
