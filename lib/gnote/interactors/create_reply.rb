require 'hanami/interactor'

module Gnote
  class CreateReply
    include Hanami::Interactor

    expose :reply

    def initialize(repository: GnoteReplyRepository.new)
      @repository = repository
    end

    # [Reference] http://hanamirb.org/guides/1.1/architecture/interactors/#dependency-injection
    def call(params_reply)
      @reply = @repository.create({
        content: params_reply[:content],
        message_id: params_reply[:message_id],
        reply_to_id: params_reply[:reply_to_id]
      })
    end
  end
end
