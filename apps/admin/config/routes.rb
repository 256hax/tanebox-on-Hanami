# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/login', to: 'login#index', as: 'login'

# OAuth callback
namespace 'auth' do
  post '/:provider/callback', to: 'sessions#create'
  get  '/:provider/callback', to: 'sessions#create'
end

delete '/sessions/', to: 'sessions#destroy', as: 'session'
