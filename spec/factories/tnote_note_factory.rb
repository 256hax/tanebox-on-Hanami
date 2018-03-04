class TnoteNoteFactory
  def create
    result = {}
    result[:note] = TnoteNoteRepository.new.create(
      created_at: '2018/03/03',
      updated_at: '2018/03/03',
      category_id: 9,
      category_name: 'Project Management',
      title: '10 Knowledge Areas',
      description: 'Integration Management',
      opened: true
    )
    result
  end
end
