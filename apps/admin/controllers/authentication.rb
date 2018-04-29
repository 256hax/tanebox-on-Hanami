module Admin::Authentication
  def self.included(action)
    action.class_eval do
      before :current_user
      expose :current_user
    end
  end

  private

  def authenticated?
    !current_user.nil?
  end

  def current_user
    @current_user ||= UserRepository.new.find_by_provider_and_uid(session[:provider], session[:uid])
  end
end
