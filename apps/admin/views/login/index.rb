module Admin::Views::Login
  class Index
    include Admin::View

    def form
      form_for :session, routes.session_path, method: :delete do
        submit 'ログアウト'
      end
    end
  end
end
