class TnoteStreamFactory
  def create(note_id)
    result = {}
    result[:stream] = TnoteStreamRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      tnote_note_id: note_id,
      content: 'no issues',
      display_order: 1
    )
    result[:stream2] = TnoteStreamRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      tnote_note_id: note_id,
      content: 'do it',
      display_order: 2
    )
    result
  end
end
