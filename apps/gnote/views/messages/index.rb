module Gnote::Views::Messages
  class Index
    include Gnote::View
    include Gnote::Helpers::LikeFormat

    def meta_title
      'ほめノート'
    end
  end
end
