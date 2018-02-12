# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

# get '/likes/:id', to: 'likes#show'
# post '/likes', to: 'likes#create'
# get '/likes/new', to: 'likes#new'
# get '/likes/:id/edit', to: 'likes#edit'
# patch '/likes/:id', to: 'likes#update'
resources :likes, only: [:show, :create, :new, :edit, :update]
