# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

# get '/notes/new', to: 'notes#new'
# post '/notes', to: 'notes#create'
# get '/notes/:id', to: 'notes#show'
# get '/notes', to: 'notes#index', as: 'notes'
# get '/notes/:id/edit', to: 'notes#edit'
# patch '/notes/:id', to: 'notes#update'
# delete '/notes/:id', to: 'notes#destroy'

resources :notes
