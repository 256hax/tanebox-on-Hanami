require 'hanami/interactor'

module Gnote
  class CreateLike
    include Hanami::Interactor

    expose :result

    def initialize(repository: GnoteLikeRepository.new)
      @repository = repository
    end

    def call(params_like)
      @result = @repository.create({
        message_id: params_like[:message_id],
        sum: COUNTUP_NUMBER
      })
    end

    private

    COUNTUP_NUMBER = 1 # create時は 1 Like しかないので 1 をセット
  end
end
