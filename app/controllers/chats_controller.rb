class ChatsController < ApplicationController


  def index
  end  


  def show
    @chats = Chat.find_by(uid: params[:id])

    raise 'Oops' unless @chats
  end 


  def new



  end  

  def create
    @chat = Chat.new
    @chat.booking_time = Time.now + 4.seconds
    puts '******************************************'
    puts @chat.booking_time
    @chat.save
    redirect_to '/chats'



  end  


end
