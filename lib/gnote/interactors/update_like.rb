require 'hanami/interactor'

module Gnote
  class UpdateLike
    include Hanami::Interactor

    expose :result

    def initialize(repository: GnoteLikeRepository.new)
      @repository = repository
    end

    def call(params)
      message_id = params[:id]
      like = @repository.find_with_message_id(message_id)
      like = like[0].to_h # Array[0]にデータが入るため、見やすくなるようにそれをハッシュ化
      id = like[:id]
      sum = like[:sum] + COUNTUP_NUMBER

      @result = @repository.update(id, sum: sum)
    end

    private

    COUNTUP_NUMBER = 1
  end
end
