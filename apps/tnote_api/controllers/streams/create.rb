module TnoteApi::Controllers::Streams
  class Create
    include TnoteApi::Action

    expose :stream

    params do
      required(:stream).schema do
        required(:tnote_note_id) { type?(Integer) }
        required(:content) { size?(1..500) }
        required(:display_order) { type?(Integer) }
      end
    end

    def call(params)
      @new_stream = Tnote::CreateStream.new
      note_id = params[:stream][:tnote_note_id]
      @note = @new_stream.find_note(note_id)

      if params.valid? && @note
        @stream = @new_stream.call(params[:stream])
      else
        self.status = 422
      end
    end
  end
end
