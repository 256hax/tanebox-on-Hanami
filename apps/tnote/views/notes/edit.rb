module Tnote::Views::Notes
  class Edit
    include Tnote::View

    def form_attr
      Form.new(:note, routes.note_path(id: note_id), {note: note}, {method: :patch})
    end

    def submit_label
      'ノートを更新する'
    end
  end
end
