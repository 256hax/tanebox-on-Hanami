module GnoteApi::Controllers::Likes
  class Create
    include GnoteApi::Action

    expose :like

    params do
      required(:like).schema do
        required(:message_id).filled(:str?)
      end
    end

    def call(params)
      if params.valid?
        @like = Gnote::CreateLike.new.call(params[:like]).result
      end
    end
  end
end
