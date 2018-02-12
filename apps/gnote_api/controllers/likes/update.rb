module GnoteApi::Controllers::Likes
  class Update
    include GnoteApi::Action

    expose :like

    params do
      required(:like).schema do
        required(:action).filled(:str?)
      end
    end

    def call(params)
      if params.valid?
        @like = Gnote::UpdateLike.new.call(params)
      end
    end
  end
end
