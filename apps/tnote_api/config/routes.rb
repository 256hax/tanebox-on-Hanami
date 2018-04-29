# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

# get '/streams/note/:id', to: 'streams#index'
# post '/streams', to: 'streams#create'
# patch '/streams/:id', to: 'streams#update'
# delete '/streams/:id', to: 'streams#destroy'
# get '/streams/:id', to: 'streams#show'
resources :streams, only: [:create, :update, :show, :destroy]
