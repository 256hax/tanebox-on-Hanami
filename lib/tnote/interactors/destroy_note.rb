require 'hanami/interactor'

module Tnote
  class DestroyNote
    include Hanami::Interactor

    expose :note

    def initialize(repository: TnoteNoteRepository.new)
      @repository = repository
    end

    def call(note_id)
      @note = @repository.delete(note_id)
    end
  end
end
