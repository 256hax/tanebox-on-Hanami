module Tnote::Controllers::Notes
  class Destroy
    include Tnote::Action

    expose :note

    def call(params)
      @note = Tnote::DestroyNote.new.call(params[:id])

      redirect_to routes.notes_path
    end
  end
end
