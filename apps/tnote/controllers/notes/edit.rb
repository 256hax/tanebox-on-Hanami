module Tnote::Controllers::Notes
  class Edit
    include Tnote::Action

    expose :note, :note_id

    def call(params)
      @note_id = params[:id]
      @note = Tnote::ShowNote.new.call(note_id)
    end
  end
end
