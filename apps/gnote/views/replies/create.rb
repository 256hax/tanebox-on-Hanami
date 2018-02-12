module Gnote::Views::Replies
  class Create
    include Gnote::View
    include Gnote::Helpers::LocaleErrorMessages

    template 'replies/new'

    def error_messages(params_errors)
      scope = 'replies.create' # controller名.action名
      i18n_t_error_messages(scope, params_errors)
    end

    def meta_title
      '返信を書く'
    end
  end
end
