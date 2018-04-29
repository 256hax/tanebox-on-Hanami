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
end
