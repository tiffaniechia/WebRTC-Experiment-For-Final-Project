class ChatsController < ApplicationController


  def index
    @chats = Chat.all
  end  

  def show
    @chats = Chat.find_by(uid: params[:id])
    @time_in_seconds = @chats.end_time.to_i - Time.now.to_i
    raise 'Oops' unless @chats
  end 


  def create
    @chat = Chat.new
    @chat.save
    @chat.booking_time = @chat.created_at + 4.seconds
    @chat.end_time = @chat.booking_time + 1.hours
    @chat.save
    redirect_to '/chats'

  end  


end
