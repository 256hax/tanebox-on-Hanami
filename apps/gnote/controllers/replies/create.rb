module Gnote::Controllers::Replies
  class Create
    include Gnote::Action

    expose :reply
    expose :message_id, :reply_to_id, :quote_reply, :quote_message_or_reply

    # need add params to Whitelisting
    # [Reference] http://hanamirb.org/guides/1.1/actions/parameters/#whitelisting
    params do
      configure do
        config.messages_file = 'config/locales/ja.yml'
      end

      required(:reply).schema do
        required(:content) { size?(1..280) }
        required(:message_id).filled(:int?)
        required(:reply_to_id).filled(:int?)
      end
    end

    def call(params)
      if params.valid?
        @reply = Gnote::CreateReply.new.call(params[:reply]) # Interactor

        redirect_to routes.root_path
      else
        load_replies
        self.status = 422
      end
    end

    private

    def load_replies
      @message_id = params[:message_id] # see routes
      @reply_to_id = params[:reply_to_id] # see routes

      if @reply_to_id == "0"
        @quote_message_or_reply = Gnote::ShowMessage.new.call(@message_id) # call Interactor
      else
        @quote_message_or_reply = Gnote::ShowReply.new.call(@reply_to_id) # call Interactor
      end
    end
  end
end
