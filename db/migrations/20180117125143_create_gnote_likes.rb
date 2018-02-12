Hanami::Model.migration do
  change do
    create_table :gnote_likes do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      foreign_key :message_id, :gnote_messages, on_delete: :cascade, null: false, unique: true
      column :sum, Integer
    end
  end
end
