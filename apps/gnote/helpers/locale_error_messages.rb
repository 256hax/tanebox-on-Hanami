module Gnote::Helpers
  module LocaleErrorMessages
    # 概要：i18nを使って日本語訳する。定義ファイルは config/locales/ja.yml を参照。
    # 引数：scope(str = "controller名.action名"), params.errors(object)
    # 戻値：日本語訳されたエラーメッセージ(array)
    def i18n_t_error_messages(scope, params_erros)
      list = Array.new
      params_erros.each do |model, attrs|
        attrs.each do |field, messages|
          messages.each do |message|
            list << "#{I18n.t(field.to_s, scope: scope)}: #{message}"
          end
        end
      end
      list # return。戻値を忘れずに入れること。
    end
  end
end
