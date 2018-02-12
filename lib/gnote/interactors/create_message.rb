require 'hanami/interactor'

module Gnote
  class CreateMessage
    include Hanami::Interactor

    expose :message

    def initialize(repository: GnoteMessageRepository.new)
      @repository = repository
    end

    def call(content:)
      @message = @repository.create({content: content})
    end
  end
end
