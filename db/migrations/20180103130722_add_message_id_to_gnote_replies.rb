# Command Line: $ bundle exec hanami generate migration add_message_id_to_gnote_replies
# [Reference] http://hanamirb.org/guides/1.1/command-line/generators/#migrations
#
# migrateコマンドの命名規則：[実行内容]_[カラム名]_to_[app名]_[実行先テーブル名]
# (例：add_message_id_to_gnote_replies)

Hanami::Model.migration do
  change do
    # [Reference] http://hanamirb.org/guides/1.1/migrations/alter-table/
    alter_table :gnote_replies do
      add_foreign_key :message_id, :gnote_messages, on_delete: :cascade, null: true
      add_column :reply_to_id, Integer
    end
  end
end

# Then db migrate
# [Reference] http://hanamirb.org/guides/1.1/command-line/database/#migrate
# db prepareだとデータ消えるのでdb migrateすること
