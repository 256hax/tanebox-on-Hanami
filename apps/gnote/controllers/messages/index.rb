module Gnote::Controllers::Messages
  class Index
    include Gnote::Action

    expose :messages_and_replies, :messages_with_all_associations

    def call(params)
      messages = Gnote::IndexMessages.new.call # call lib/gnote/interactors/index_messages.rb
      @messages_and_replies = Gnote::IndexReplies.new.call(messages)

      @messages_with_all_associations = Gnote::IndexMessagesWithAllAssociations.new.call(messages)
    end
  end
end
