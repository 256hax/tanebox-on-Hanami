module Tnote::Views::Notes
  class Index
    include Tnote::View

    def form_delete(note_id)
      form_for :note, routes.note_path(id: note_id), method: :delete do
        submit '削除する'
      end
    end
  end
end
