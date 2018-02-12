module Gnote::Helpers
  module DateFormat
    # 引数：日付(date Object)、戻り値：日本語の曜日(String)
    def wday_to_ja(date)
      WDAY_JA[date.wday]
    end

    # 引数：日付(date Object)、戻り値：MM/DD(WDAY_JA)(String)
    def mmdd_wday_to_ja(date)
      "#{date.month}/#{date.day}(#{wday_to_ja(date)})"
    end

    private

    # Dateオブジェクトのwdayメソッドで日本語の曜日に変換する値を定義。戻り値は 0：日...6：土
    WDAY_JA = %w[日 月 火 水 木 金 土]
  end
end
