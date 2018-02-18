module Admin::Controllers::Sessions
  class Destroy
    include Admin::Action

    def call(params)
      session[:uid] = nil
      session[:provider] = nil
      redirect_to routes.login_path
    end
  end
end
