class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    ActionCable.server.broadcast 'chatroom_channel', message: render_partial(message) if message.save
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def render_partial(msg)
    render(partial: 'chatroom/message', locals: { message: msg })
  end
end
