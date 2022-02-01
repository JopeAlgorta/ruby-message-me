# frozen_string_literal: true

# User model
class Message < ApplicationRecord
  belongs_to :user

  validates :body, presence: true
end
