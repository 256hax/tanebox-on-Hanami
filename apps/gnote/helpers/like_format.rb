module Gnote::Helpers
  module LikeFormat
    # 引数：object。
    # 戻値：likeがないとnilになるため空文字を、likeがあると.sumで数字が取れるため数字を返す
    def likes_sum_number(like)
      like == nil ? '' : like.sum
    end

    def like_action(like)
      like == nil ? 'create' : 'update'
    end

    def like_method(like)
      like == nil ? 'POST' : 'PATCH'
    end

    def like_url(like)
      if(like == nil)
        GnoteApi.routes.likes_path
      else
        "#{GnoteApi.routes.likes_path}/#{like.message_id}"
      end
    end
  end
end
