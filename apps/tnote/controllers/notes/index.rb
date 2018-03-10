module Tnote::Controllers::Notes
  class Index
    include Tnote::Action

    expose :notes

    def call(params)
      @notes = Tnote::IndexNotes.new.call.list
    end
  end
end
