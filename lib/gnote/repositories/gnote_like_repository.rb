class GnoteLikeRepository < Hanami::Repository
  associations do
    belongs_to :gnote_message
  end

  def find_with_message_id(message_id)
    gnote_likes
      .where(message_id: message_id)
      .call.collection
  end
end
