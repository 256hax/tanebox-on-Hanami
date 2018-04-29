class TnoteNoteRepository < Hanami::Repository
  associations do
    has_many :tnote_streams
  end

  def find_with_streams(id)
    aggregate(:tnote_streams).where(id: id).as(TnoteNote).one
  end

  # front-end側でdisplay_orderを取得するためコメントアウト
  #
  # def get_last_display_order(id)
  #   aggregate(:tnote_streams)
  #     .where(id: id)
  #     .order{ display_order.desc }
  #     .as(TnoteNote).one
  # end
end
