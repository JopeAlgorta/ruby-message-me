class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    redirect_to chatroom_path if message.save
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end