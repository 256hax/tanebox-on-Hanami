# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

root to: 'messages#index'
post '/', to: 'messages#create'
get  '/new', to: 'messages#new', as: 'new_messages'

namespace 'replies' do
  post '/:message_id/:reply_to_id', to: 'replies#create', as: 'create_replies'
  get  '/:message_id/:reply_to_id/new', to: 'replies#new', as: 'new_replies'
end

namespace 'articles' do
  get '/:page', to: 'static#show', as: 'articles'
end
