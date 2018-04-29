require_relative '../../../spec_helper'

describe TnoteApi::Controllers::Streams::Show do
  before do
    @stream = TnoteStream.new(id: 10, content: 'do it')
  end

  let(:action) { TnoteApi::Controllers::Streams::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end

  it 'can be initialized with attributes' do
    @stream.content.must_equal 'do it'
  end
end
