class MessagesController < ApplicationController

    def create 
        message = Message.create(message_params)
        render json: message
    end

    def show 
        room = Session.find(params[:id]).room
        messages = room.messages
        render json: messages 
    end


    private 

    def message_params 
        params.require(:message).permit(:session_id,:content)
    end

end
