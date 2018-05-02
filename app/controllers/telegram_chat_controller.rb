class TelegramChatController < Telegram::Bot::UpdatesController
  def message(message)
    reply_with :message, text: "Echo: #{message['text']}"
  end

  def start(*)
    # byebug
    # Есть хэлперы для chat и from:
    reply_with :message, text: "Hello #{from['username']}!" if from
    # Доступ к самому сообщению можно получить через payload:
    log { "Started at: #{payload['date']}" }
  end
end