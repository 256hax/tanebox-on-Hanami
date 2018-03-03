require 'hanami/interactor'

module Tnote
  class IndexNotes
    include Hanami::Interactor

    expose :list

    def initialize(repository: TnoteNoteRepository.new)
      @repository = repository
    end

    def call
      @list = @repository.all
    end
  end

  class IndexNoteWithAllAssociations
    include Hanami::Interactor

    expose :list

    def initialize(repository: TnoteNoteRepository.new)
      @repository = repository
    end

    def call(note_id)
      @list = @repository.find_with_streams(note_id)
    end
  end
end
