require 'hanami/interactor'

module Tnote
  class CreateStream
    include Hanami::Interactor

    expose :stream, :note

    def initialize(repository: TnoteStreamRepository.new, note_repository: TnoteNoteRepository.new)
      @repository = repository
      @note_repository = note_repository
    end

    def call(stream)
      @stream = @repository.create(stream)
    end

    def find_note(note_id)
      @note = @note_repository.find(note_id)
    end

    # private
    #
    # front-end側でdisplay_orderを取得するためコメントアウト
    #
    # def set_diplay_order(note_id)
    #   @display_order = @note_repository.get_last_display_order(note_id)
    # end
  end
end
