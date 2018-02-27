require 'hanami/interactor'

module Tnote
  class UpdateNote
    include Hanami::Interactor

    expose :note

    def initialize(repository: TnoteNoteRepository.new)
      @repository = repository
    end

    def call(note_id, note)
      @note = @repository.update(note_id, note)
      Hanami.logger.debug note.inspect
    end
  end
end
