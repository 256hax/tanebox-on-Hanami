module Gnote::Controllers::Replies
  class New
    include Gnote::Action

    expose :message_id, :reply_to_id, :quote_message, :quote_reply, :quote_message_or_reply

    def call(params)
      @message_id = params[:message_id] # see routes
      @reply_to_id = params[:reply_to_id] # see routes

      # paramsのreply_to_idが0(文字列)だったらmessageを引用し、それ以外だったらreplyを引用
      # 親メッセージは「0」、返信メッセージは「0」以外が入るため、親メッセージと返信メッセージで
      # それぞれ区別して返信ができるようにするための処理。今後実装予定の機能。
      if @reply_to_id == "0"
        @quote_message_or_reply = Gnote::ShowMessage.new.call(@message_id) # call Interactor
      else
        @quote_message_or_reply = Gnote::ShowReply.new.call(@reply_to_id) # call Interactor
      end
    end
  end
end
