class NewMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "new_messages"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
