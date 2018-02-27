require 'hanami/interactor'

module Tnote
  class CreateNote
    include Hanami::Interactor

    expose :note

    def initialize(repository: TnoteNoteRepository.new)
      @repository = repository
    end

    def call(note)
      @note = @repository.create(note)
    end
  end
end
