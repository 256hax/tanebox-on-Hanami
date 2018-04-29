require './config/environment'

use Rack::Session::Cookie, secret: ENV['ADMIN_SESSIONS_SECRET'] # Common to apps/admin

# OAuth
use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
  {
    name: 'google_oauth2', # The default name is google_oauth2
    scope: 'userinfo.email, userinfo.profile, plus.me',
    image_size: 50,
    #redirect_uri: 'http://localhost:2300/admin/auth/google_oauth2/callback', # <- use callback_path instead redirect_uri.
    callback_path: "/admin/auth/google_oauth2/callback"
  }
end

run Hanami.app
