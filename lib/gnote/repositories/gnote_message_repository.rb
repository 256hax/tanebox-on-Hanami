class GnoteMessageRepository < Hanami::Repository
  associations do
    has_many :gnote_replies
    has_one :gnote_like
  end

  require 'date' # for "most_recent_posts" method

  # 直近の投稿。Fromは引数、ToはCURRENT_DATEを固定で定義
  def most_recent_posts(most_recent_start_date)
    gnote_messages
      .select(:id)
      .where(
        created_at: most_recent_start_date..CURRENT_DATE,
        is_deleted: nil
      )
      .order{ created_at.desc }
      .call.collection # Interactorでデータオブジェクトにアクセスしたいためつける
  end

  # message_idに紐付いたrepliesを全て取得。直近の投稿のみrepliesを取得する必要があるため（repository.allだと全件取得してしまうためNG）、idを指定してrepliesを取得する。
  def find_with_replies(id)
    aggregate(:gnote_replies).where(id: id).as(GnoteMessage).one
  end

  def find_with_like_and_replies(id) # 単語の単数形、複数形の記載に要注意。間違えると動かない。
    aggregate(:gnote_like, :gnote_replies).where(id: id).as(GnoteMessage).one
  end

  private

  # 取得するデータを日付で指定するためのFrom ToでいうToをここで定義。
  # 今日投稿されたデータも取得するため、Toは翌日の日付を指定（+1日）する。
  # 文字列で渡す必要があるためto_sする。
  # ここの定義は基本的に変更されない（変更する必要がない）。
  CURRENT_DATE = (Date.today + 1).to_s
end
