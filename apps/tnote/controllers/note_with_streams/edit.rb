module Tnote::Controllers::NoteWithStreams
  class Edit
    include Tnote::Action

    expose :note_with_all_associations

    def call(params)
      note_id = params[:id]
      @note_with_all_associations = Tnote::IndexNoteWithAllAssociations.new.call(note_id)
    end
  end
end
