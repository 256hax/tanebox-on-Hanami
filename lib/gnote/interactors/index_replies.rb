require 'hanami/interactor'

module Gnote
  class IndexReplies
    include Hanami::Interactor

    expose :list

    def initialize(repository: GnoteMessageRepository.new)
      @repository = repository
    end

    def call(message_ids)
      get_messages_and_replies(message_ids)
    end

    private

    def get_messages_and_replies(message_ids)
      @list = Array.new
      message_ids.most_recent.each { |m|
        @list << @repository.find_with_replies(m.id)
      }
    end
  end
end
