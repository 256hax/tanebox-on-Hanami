module Admin::Controllers::Sessions
  class Create
    include Admin::Action

    def call(params)
      auth = request.env['omniauth.auth']
      result = FindOrCreateUserForAuth.new(repository:UserRepository.new).call(auth)

      if result.success?
        session[:provider] = result.user.provider
        session[:uid]      = result.user.uid

        flash[:success] = "ログインしました"
      else
        flash[:error] = "ログインできませんでした"
      end

      redirect_to routes.login_path
    end
  end
end
