require_relative '../../../spec_helper'
require_relative '../../../factories/tnote_note_factory'
require_relative '../../../factories/tnote_stream_factory'
require 'json'

describe TnoteApi::Controllers::Streams::Create do
  before do
    test_data = TnoteNoteFactory.new.create # call factories/tnote_note_factory.rb
    @note_id = test_data[:note].id
    #repository.clear
    @stream = TnoteStreamRepository.new.last
  end

  let(:action) { TnoteApi::Controllers::Streams::Create.new }
  let(:params) { Hash[stream: {tnote_note_id: @note_id, content: 'The 7 keys to success', display_order: 1}] }
  let(:repository) { TnoteStreamRepository.new }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end

  it 'creates a new stream' do
    #@stream = repository.last
    @stream.id.wont_be_nil
    #@stream.content.must_equal params.dig(:stream, :content)
  end
end
