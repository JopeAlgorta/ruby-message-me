class ChatroomController < ApplicationController
  before_action :require_user, only: [:index]

  def index
    @messages = Message.latest_messages
    @message = Message.new
  end
end
