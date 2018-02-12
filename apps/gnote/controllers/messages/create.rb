module Gnote::Controllers::Messages
  class Create
    include Gnote::Action

    expose :message

    params do
      configure do
        config.messages_file = 'config/locales/ja.yml'
      end

      required(:message).schema do
        required(:content) { size?(1..280) }
      end
    end

    def call(params)
      if params.valid?
        @message = Gnote::CreateMessage.new.call(params[:message])

        redirect_to routes.root_path
      else
        self.status = 422
      end
    end
  end
end
