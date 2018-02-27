module Tnote::Controllers::Notes
  class Update
    include Tnote::Action

    expose :note

    params do
      required(:note).schema do
        required(:category_name) { size?(1..30) }
        required(:title) { size?(1..100) }
      end
    end

    def call(params)
      if params.valid?
        @note = Tnote::UpdateNote.new.call(params[:id], params[:note])

        redirect_to routes.notes_path
      else
        self.status = 422
      end
    end
  end
end
