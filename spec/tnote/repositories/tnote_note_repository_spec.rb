require_relative '../../spec_helper'
require_relative '../../factories/tnote_note_factory'

describe TnoteNoteRepository do
  test_data = TnoteNoteFactory.new.create # call factories/tnote_note_factory.rb

  it 'TnoteNote with TnoteStream associations are successful' do
    @note_with_all_associations = Tnote::IndexNoteWithAllAssociations.new.call(test_data[:note].id)
    stream_content = @note_with_all_associations.list.tnote_streams[0].content
    stream_content.must_equal 'do it'
  end
end
