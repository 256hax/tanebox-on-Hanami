class TnoteNoteRepository < Hanami::Repository
  associations do
    has_many :tnote_streams
  end

  def find_with_streams(id)
    aggregate(:tnote_streams).where(id: id).as(TnoteNote).one
  end
end
