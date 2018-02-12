require 'hanami/interactor'

module Gnote
  class ShowReply
    include Hanami::Interactor

    expose :result

    def initialize(repository: GnoteReplyRepository.new)
      @repository = repository
    end

    def call(id)
      @result = @repository.find(id)
    end
  end
end
