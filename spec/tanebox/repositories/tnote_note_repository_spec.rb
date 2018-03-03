require_relative '../../spec_helper'

describe TnoteNoteRepository do
  before do
    @note = TnoteNoteRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      category_id: 9,
      category_name: 'Ruby',
      title: 'Refactoring',
      description: 'How to improve Ruby coding',
      opened: true
    )
    @note_id = @note.id
    @stream = TnoteStreamRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      tnote_note_id: @note_id,
      content: 'do it',
      display_order: 1
    )
    @stream2 = TnoteStreamRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      tnote_note_id: @note_id,
      content: 'DRY',
      display_order: 2
    )
  end

  it 'associations are successful' do
    note_id = 1
    @note_with_all_associations = Tnote::IndexNoteWithAllAssociations.new.call(note_id)
    stream_content = @note_with_all_associations.list.tnote_streams[0].content
    stream_content.must_equal 'do it'
  end
end
