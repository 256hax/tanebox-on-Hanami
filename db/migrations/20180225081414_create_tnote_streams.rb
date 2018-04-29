Hanami::Model.migration do
  change do
    create_table :tnote_streams do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      foreign_key :tnote_note_id, :tnote_notes, on_delete: :cascade, null: false
      column :content, String, null: false, size: 1000
      column :display_order, Integer, null: false
    end
  end
end
