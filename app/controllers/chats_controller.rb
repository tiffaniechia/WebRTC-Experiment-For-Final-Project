class ChatsController < ApplicationController


  def index
    @chats = Chat.all
  end  

  def show
    @chats = Chat.find_by(uid: params[:id])

    raise 'Oops' unless @chats
  end 


  def create
    @chat = Chat.new
    @chat.save
    @chat.booking_time = @chat.created_at + 4.seconds
    puts @chat.booking_time
    @chat.save
    redirect_to '/chats'

  end  


end
