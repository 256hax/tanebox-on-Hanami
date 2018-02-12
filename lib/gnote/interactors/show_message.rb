require 'hanami/interactor'

module Gnote
  class ShowMessage
    include Hanami::Interactor

    expose :result

    def initialize(repository: GnoteMessageRepository.new)
      @repository = repository
    end

    def call(id)
      @result = @repository.find(id)
    end
  end
end
