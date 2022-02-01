Rails.application.routes.draw do
  root 'welcome#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'chatroom', to: 'chatroom#index'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
