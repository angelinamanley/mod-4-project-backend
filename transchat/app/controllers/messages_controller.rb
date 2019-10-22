require_relative "../helpers/translate.rb"


class MessagesController < ApplicationController

    def create 
        message = Message.create(message_params)
        trans_string = translate_string(message.content, params[:language])
        trans_string.text.gsub!(/&#39;/, "'");
        trans_message = TransMessage.create(message_id: message.id, language: params[:language], content: trans_string)
        
        render json: message
    end

    def show 
        room = Session.find(params[:id]).room
        messages = room.messages
        render json: messages.to_json(:include => {
            :trans_messages => {:only => [:content, :language]}})
    end

    private 

    def message_params 
        params.require(:message).permit(:session_id,:content, :language)
    end

end
