class TnoteNoteFactory
  def create
    result = {}
    result[:note] = TnoteNoteRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      category_id: 9,
      category_name: 'Ruby',
      title: 'Refactoring',
      description: 'How to improve Ruby coding',
      opened: true
    )
    @note_id = result[:note].id
    result[:stream] = TnoteStreamRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      tnote_note_id: @note_id,
      content: 'do it',
      display_order: 1
    )
    result[:stream2] = TnoteStreamRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      tnote_note_id: @note_id,
      content: 'DRY',
      display_order: 2
    )

    result
  end
end
