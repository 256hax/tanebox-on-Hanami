# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
#root to: 'login#index'
get '/login', to: 'login#index', as: 'login'
#post '/sessions', to: 'sessions#create'
#resources :sessions, only: [:destroy]

# OAuth callback
# namespace 'auth' do
#   post '/:provider/callback', to: 'sessions#create'
#   get  '/:provider/callback', to: 'sessions#create'
# end
post '/auth/:provider/callback', to: 'sessions#create'
get  '/auth/:provider/callback', to: 'sessions#create'
delete '/sessions/', to: 'sessions#destroy', as: 'session'
