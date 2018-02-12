Hanami::Model.migration do
  change do
    create_table :gnote_messages do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      column :author_hash_ip, String
      column :content, String
      column :is_deleted, TrueClass
    end
  end
end
