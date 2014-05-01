class MessagesController < ApplicationController

  def create
    # username: current_user.email, 
    WebsocketRails[:chat].trigger 'new', { message: params[:message], user_name: 'frank'}
    render nothing: true
  end

end
