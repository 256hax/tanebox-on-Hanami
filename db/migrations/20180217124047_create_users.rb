Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      column :provider  , String , null: false
      column :uid       , String , null: false
      column :name      , String , null: false
      column :image_path, String , null: true

      index [:provider, :uid], unique: true
    end
  end
end
