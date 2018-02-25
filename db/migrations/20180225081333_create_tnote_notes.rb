Hanami::Model.migration do
  change do
    create_table :tnote_notes do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      column :category_id, Integer, null: true
      column :category_name, String, null: false
      column :title, String, null: false
      column :description, String, null: true
      column :content, String, null: true, text: true
      # "text: true" means "Date Type: Text". See the sequel docs.
      #http://sequel.jeremyevans.net/rdoc/files/doc/schema_modification_rdoc.html#label-Column+types
      column :opened, TrueClass, null: false, default: true
      column :open_date, DateTime, null: true

      index [:category_name, :title], unique: false
    end
  end
end
