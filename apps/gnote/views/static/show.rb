module Gnote::Views::Static
  class Show
    include Gnote::View

    def target_page(page)
      # rootから静的に読み込みたいパスを定義
      root_to_static_dir_path = '/apps/gnote/templates/static/articles'
      target_full_dir_path = "#{Hanami.root}#{root_to_static_dir_path}"
      filename_list = Dir.glob("#{target_full_dir_path}/*.html.erb")

      # Dir.globの値にディレクトリパスも拡張子も含まれてしまうため、それらを取り除く。
      # Dir.globのオプション引数の「[PARAM] base:」はうまく動作しなかったため利用しない。
      filename_list.map! do |s|
        File.basename(s, '.html.erb')
      end

      filename_list.select { |f| f == page }
    end
  end
end
