module Gnote
  module Views
    class ApplicationLayout
      include Gnote::Layout

      def meta_title
        'ほめノート' # default meta title
      end
    end
  end
end
