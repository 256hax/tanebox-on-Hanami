require_relative '../../../spec_helper'

describe TnoteApi::Controllers::Streams::Create do
  let(:action) { TnoteApi::Controllers::Streams::Create.new }
  let(:params) { Hash[stream: {tnote_note_id: 1, content: 'The 7 keys to success', display_order: 1}] }
  let(:repository) {TnoteStreamRepository.new}

  before do
    repository.clear
  end

  it 'creates a new stream' do
    action.call(params)
    stream = repository.last

    stream.id.wont_be_nil
    stream.content.must_equal params.dig(:stream, :content)
  end
end
