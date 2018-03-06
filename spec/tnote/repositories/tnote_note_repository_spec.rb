require_relative '../../spec_helper'
require_relative '../../factories/tnote_note_factory'
require_relative '../../factories/tnote_stream_factory'

describe TnoteNoteRepository do
  before do
    @test_data = TnoteNoteFactory.new.create # call factories/tnote_note_factory.rb
    @note_id = @test_data[:note].id
    @test_data.merge!(TnoteStreamFactory.new.create(@note_id))
  end

  it 'TnoteNote with TnoteStream associations are successful' do
    note_with_all_associations = Tnote::IndexNoteWithAllAssociations.new.call(@note_id) # call Interactor
    stream_content = note_with_all_associations.list.tnote_streams[0].content
    stream_content.must_equal 'no issues'
  end
end
