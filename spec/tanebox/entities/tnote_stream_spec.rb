require_relative '../../spec_helper'

describe TnoteStream do
  before do
    @stream = TnoteStream.new(content: 'Refactoring')
  end

  it 'can be initialized with attributes' do
    @stream.content.must_equal 'Refactoring'
  end
end
