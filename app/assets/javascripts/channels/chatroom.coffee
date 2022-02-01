App.chatroom = App.cable.subscriptions.create 'ChatroomChannel',
  connected: ->
    # do do
  disconnected: ->
    # do do
  received: (data) ->
    $('#messages').append data.message
    scroll_bottom()
