require 'hanami/interactor'

module Gnote
  class IndexMessages
    include Hanami::Interactor

    expose :most_recent

    def initialize(repository: GnoteMessageRepository.new)
      @repository = repository
      #Hanami.logger.debug @repository.find_with_like_and_replies(1).inspect
    end

    def call
      @most_recent = @repository.most_recent_posts(MOST_RECENT_START_DATE) # call  lib/gnote/repositories/message_repository.rb
    end

    private

    # 開始日を定義。repositoryは文字列で渡す必要があるためto_sをする。
    MOST_RECENT_START_DATE = (Date.today - 7).to_s.freeze
  end

  class IndexMessagesWithAllAssociations
    include Hanami::Interactor

    expose :list

    def initialize(repository: GnoteMessageRepository.new)
      @repository = repository
    end

    def call(message_ids)
      get_messages_with_all_associations(message_ids)
    end

    private

    def get_messages_with_all_associations(message_ids)
      @list = Array.new
      message_ids.most_recent.each { |m|
        @list << @repository.find_with_like_and_replies(m.id)
      }
    end
  end
end
