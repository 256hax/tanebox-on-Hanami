module Gnote::Views::Messages
  class Create
    include Gnote::View
    include Gnote::Helpers::LocaleErrorMessages

    template 'messages/new'

    def error_messages(params_errors)
      scope = 'messages.create' # controller名.action名
      i18n_t_error_messages(scope, params_errors)
    end

    def meta_title
      'ほめノートに書く'
    end
  end
end
