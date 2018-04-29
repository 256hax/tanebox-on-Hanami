require 'hanami/interactor'

module Tnote
  class ShowNote
    include Hanami::Interactor

    expose :data

    def initialize(repository: TnoteNoteRepository.new)
      @repository = repository
    end

    def call(note_id)
      @data = @repository.find(note_id)
    end
  end
end
