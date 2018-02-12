module Gnote::Controllers::Static
  class Show
    include Gnote::Action

    expose :page, :meta_title

    def call(params)
      page = params[:page]
      @page = page
      @meta_title = "ほめノート - #{page}" # viewで設定できないためcontrollerで定義
    end

    # - usage -
    # 静的ページを新規で設置したい場合は、
    # templates/static/articles/にファイルを作成するだけでよい。
    # 設置したファイルはview側で自動的に読み込まれる。
  end
end
