Rails.application.routes.draw do
  root 'chats#index'
  telegram_webhook TelegramChatController, :bot_one
end
